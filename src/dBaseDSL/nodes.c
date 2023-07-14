# include "common.h"

struct node*
add_func_print(
	struct node* prev_node)
{
	if (prev_node == NULL) {
		fprintf(stderr,"prev should not be NULL\n");
		return NULL;
	}
	
	prev_node->next = (struct node*) malloc(sizeof(struct node));
	prev_node->next->id   = ID_TYPE_PRINT;
	prev_node->next->next = NULL;
	
	return prev_node->next;
}

struct node*
add_op_plus_node(
	struct node *p_node,
	int node_type,
	int lhs_value,
	int rhs_value)
{
	if (p_node == NULL) {
		fprintf(stderr,"p_node must not be NULL\n");
		return NULL;
	}
	
	p_node->id  = node_type;
	p_node->lhs = (struct node*) malloc(sizeof(struct node));
	p_node->lhs->num = lhs_value;
	
	p_node->lhs->prev = NULL; p_node->lhs->lhs = NULL;
	p_node->lhs->next = NULL; p_node->lhs->rhs = NULL;
		
	p_node->rhs = (struct node*) malloc(sizeof(struct node));
	p_node->rhs->num = rhs_value;
		
	p_node->rhs->prev = NULL; p_node->rhs->lhs = NULL;
	p_node->rhs->next = NULL; p_node->rhs->rhs = NULL;

	return p_node;
}

void init_root_node(void)
{
	struct node *next_node, *print_node;
	
	root = (struct node*) malloc(sizeof(struct node));
	
	next_node  = add_op_plus_node(root,ID_TYPE_OP_PLUS,5,4);
	print_node = add_func_print(next_node);
}

int test_nodes()
{
	struct node* ptr;
	
	init_root_node();
	ptr = root;
	
	while (ptr != NULL)
	{
		if (ptr->id == ID_TYPE_PRINT) {
			printf("printer: %d\n",
				ptr->num);
		}
		else if (ptr->id == ID_TYPE_OP_PLUS) {
			printf("plus: %d\n",
				ptr->lhs->num +
				ptr->rhs->num
			);
			ptr->next->num = ptr->lhs->num + ptr->rhs->num;
		}
		ptr = ptr->next;
	}
	return 0;
}

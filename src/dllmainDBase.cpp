# include <windows.h>
# include <shlwapi.h>

char* dBaseDLLdirectory;
char* modulePath;

#pragma argsused
int WINAPI DllEntryPoint(
  HINSTANCE hinst,
  unsigned long reason,
  void* lpReserved)
{
  switch (reason) {
    case DLL_PROCESS_ATTACH:
    {
      modulePath        = (char*) malloc(  MAX_PATH );
      GetModuleFileName(hinst, modulePath, MAX_PATH );
	  
	  char* path = (char*) malloc(strlen(modulePath));
	  
	  dBaseDLLdirectory = strrchr(modulePath,'\\');
	  if (dBaseDLLdirectory != NULL) {
        int length = dBaseDLLdirectory - modulePath + 1;
		strncpy(path, modulePath, length );
		path[length] = '\0';
      }

      strcpy(dBaseDLLdirectory,path);
	  
	  free(path);
	  free(modulePath);
    }
    break;
    case DLL_PROCESS_DETACH:
    {
      dBaseDLLdirectory = (char*) realloc(
      dBaseDLLdirectory,0);
	  
	  free(modulePath);
    }
    break;
  }
  return 1;
}

 
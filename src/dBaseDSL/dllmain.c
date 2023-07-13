// ----------------------------------------------------------------------------
// File   : dBaseDllMain.cc
// Author : Jens Kallup (c) 2023-07.01
// License: all rights reserved.
// ----------------------------------------------------------------------------
#include "common.h"

char* dBaseDLLdirectory;
char* modulePath;

int WINAPI DllEntryPoint(
    HINSTANCE hinst,
    unsigned long reason,
    void* lpReserved)
{
    char* path;
    switch (reason) {
        case DLL_PROCESS_ATTACH:
        {
            modulePath = (char*) malloc( MAX_PATH );
            GetModuleFileNameA(hinst, modulePath, MAX_PATH );
	  
            path = (char*) malloc(strlen(modulePath)+1);
	  
	        dBaseDLLdirectory = strrchr(modulePath,'\\');
	        //if (dBaseDLLdirectory != 0)
            {
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
            free(dBaseDLLdirectory);
        }
        break;
    }
    return 1;
}

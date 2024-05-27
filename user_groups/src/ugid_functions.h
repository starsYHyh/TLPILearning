#include <pwd.h>
#include <grp.h>
#include <ctype.h>
#include "tlpi_hdr.h"

char *userNameFromId(uid_t uid);

uid_t userIdFromName(const char *name);

char *gruopNameFromId(gid_t gid);

gid_t groupIdFromName(const char *name);
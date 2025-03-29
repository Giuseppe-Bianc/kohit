
#pragma once

#include "defines.h"

// Returns the length of the given string.
KAPI u64 string_length(const char *str);

KAPI char *string_duplicate(const char *str);

KAPI b8 strings_equal(const char *str1, const char *str2);
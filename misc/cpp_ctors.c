/*
 * Copyright (c) 2012-2014 Wind River Systems, Inc.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

/**
 * @file - Constructor module
 * @brief
 * The ctors section contains a list of function pointers that execute the
 * C++ constructors of static global objects. These must be executed before
 * the application's main() routine.
 *
 * NOTE: Not all compilers put those function pointers into the ctors section;
 * some put them into the init_array section instead.
 */

/* What a constructor function pointer looks like */

typedef void (*CtorFuncPtr)(void);

/* Constructor function pointer list is generated by the linker script. */

extern CtorFuncPtr __CTOR_LIST__[];
extern CtorFuncPtr __CTOR_END__[];

/**
 *
 * @brief Invoke all C++ style global object constructors
 *
 * This routine is invoked by the kernel prior to the execution of the
 * application's main().
 */
void __do_global_ctors_aux(void)
{
	unsigned int nCtors;

	nCtors = (unsigned int)__CTOR_LIST__[0];

	while (nCtors >= 1) {
		__CTOR_LIST__[nCtors--]();
	}
}

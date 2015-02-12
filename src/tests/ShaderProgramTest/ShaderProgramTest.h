/**************************************************************************
 *
 * Copyright (c) 2002 - 2011 by Computer Architecture Department,
 * Universitat Politecnica de Catalunya.
 * All rights reserved.
 *
 * The contents of this file may not be disclosed to third parties,
 * copied or duplicated in any form, in whole or in part, without the
 * prior permission of the authors, Computer Architecture Department
 * and Universitat Politecnica de Catalunya.
 *
 */

#ifndef SHADERPROGRAMTEST_H
    #define SHADERPROGRAMTEST_H

/// Define globals ///
// #define SHADER_PROGRAM_TEST_DEBUG

#ifdef SHADER_PROGRAM_TEST_DEBUG
    #define SPT_DEBUG(expr) { expr }
#else
#define SPT_DEBUG(expr) {}
#endif

#endif SHADERPROGRAMTEST_H

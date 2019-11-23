// Copyright 2009 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

#include "textflag.h"

TEXT _rt0_amd64_linux(SB),NOSPLIT,$-8
	JMP	_rt0_amd64(SB)
	CALL	_rt0_hack(SB)
	INT	$3

TEXT _rt0_hack(SB),NOSPLIT,$0
	CALL	runtime·rt0_go_hack(SB)
	INT	$3

TEXT _rt0_amd64_linux_lib(SB),NOSPLIT,$0
	JMP	_rt0_amd64_lib(SB)

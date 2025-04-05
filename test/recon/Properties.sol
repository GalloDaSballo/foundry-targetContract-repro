// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {Asserts} from "@chimera/Asserts.sol";
import {BeforeAfter} from "./BeforeAfter.sol";

abstract contract Properties is BeforeAfter, Asserts {
    // example property test that gets called randomly by the fuzzer
    function invariant_number_never_zero() public {
        gt(counter.number(), 0, "number is zero");
    }

    uint256 count;

    function increase_count() public {
        count++;
    }
    function invariant_count_never_gt_0() public {
        gte(1, count, "Count is never gt 0");
    }
}

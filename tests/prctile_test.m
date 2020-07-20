function tests = prctile_test
    tests = functiontests(localfunctions);
end

function test_vector_single_percentile(testCase)
    x = [1 5 3 4 2];
    verifyEqual(testCase, prctile(x, 0), 1);
    verifyEqual(testCase, prctile(x, 1), 1);
    verifyEqual(testCase, prctile(x, 20), 2);
    verifyEqual(testCase, prctile(x, 100), 5);
end

function test_vector_multiple_percentiles(testCase)
    x = [1 5 3 4 2];
    verifyEqual(testCase, prctile(x, [0, 100]), [1, 5]);
end

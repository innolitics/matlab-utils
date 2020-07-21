function tests = prctile_test
    tests = functiontests(localfunctions);
end

function test_vector_single_percentile(testCase)
    x = [1 6 4 5 2];
    verifyEqual(testCase, prctile(x, 0), 1);
    verifyEqual(testCase, prctile(x, 10), 1);
    verifyEqual(testCase, prctile(x, 20), 1.5);
    verifyEqual(testCase, prctile(x, 30), 2);
    verifyEqual(testCase, prctile(x, 40), 3);
    verifyEqual(testCase, prctile(x, 50), 4);
    verifyEqual(testCase, prctile(x, 60), 4.5);
    verifyEqual(testCase, prctile(x, 70), 5);
    verifyEqual(testCase, prctile(x, 80), 5.5);
    verifyEqual(testCase, prctile(x, 90), 6);
    verifyEqual(testCase, prctile(x, 100), 6);
end

function test_vector_multiple_percentiles(testCase)
    x = [1 5 3 4 2];
    verifyEqual(testCase, prctile(x, [0, 100]), [1, 5]);
end

function test_vector_nan(testCase)
    x = [1 2 3 nan];
    verifyEqual(testCase, prctile(x, [0, 50, 100]), [1, 2, 3]);
end

% TODO: finish writing test
%function test_matrix(testCase)
    %X = [1 2 3; 1 1 1; 1 nan nan];
    %verifyEqual(testCase, prctile(X, [0, 50, 100]), [1, 2, 3]);
%end

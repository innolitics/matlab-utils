function tests = unifrnd_test
    tests = functiontests(localfunctions);
end

function test_unifrnd_1_double(testCase)
    x = unifrnd(1, 2);
    verifyInstanceOf(testCase, x, 'double');
    verifySize(testCase, x, [1 1]);
end

function test_unifrnd_1_single(testCase)
    a = single(1);
    b = single(2);
    x = unifrnd(a, b);
    verifyInstanceOf(testCase, x, 'float');
    verifySize(testCase, x, [1 1]);
end

function test_unifrnd_1_limits_1(testCase)
    x = unifrnd(1, 1);
    verifyEqual(testCase, x, 1);
end

function test_unifrnd_1_limits_2(testCase)
    x = unifrnd(2, 2);
    verifyEqual(testCase, x, 2);
end

function test_unifrnd_2(testCase)
    x = unifrnd(1, 2, 2);

    % NOTE: it is not clear from the MATLAB docs whether the result should
    % be [2 2] or [2 1]
    verifySize(testCase, x, [2 2]);
end

function test_unifrnd_234(testCase)
    x = unifrnd(1, 2, 2, 3, 4);
    verifySize(testCase, x, [2 3 4]);
end

function test_unifrnd_12_limits(testCase)
    x = unifrnd([1 2], [1 2], 1, 2);
    verifyEqual(testCase, x, [1 2]);
end

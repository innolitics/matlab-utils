function Y = prctile(x, p)
    assert(isvector(x), "non-vector x not supported");
    assert(isvector(p), "non-vector p not supported");

    % TODO: see how MATLAB handles non-double datasets
    x = double(x);
    p = double(p);
    xSorted = sort(x(~isnan(x)));
    n = length(xSorted);
    xPercentiles = [0 linspace(100*0.5/n, 100*(n - 0.5)/n, n) 100];

    % TODO: see how MATLAB handles percentiles outside of [0.0, 100]
    Y = interp1(xPercentiles, [xSorted(1) xSorted xSorted(end)], p);
end

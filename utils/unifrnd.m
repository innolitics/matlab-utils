function X = unifrnd(a, b, varargin)
    nSize = length(varargin);
    if nSize == 0
        sz = 1;
    elseif nSize == 1 && isvector(varargin{1})
        sz = varargin{1};
    else
        sz = cell2mat(varargin);
    end
    if isa(a, 'single') && isa(b, 'single')
        type = 'single';
    else
        type = 'double';
    end
    X = a + rand(sz, type).*(a - b);
end
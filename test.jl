mutable struct model
    coefficients::Vector
end

function (m::model)(x)
    coefs = m.coefficients
    return coefs
end

lm = model([1,3,5])
lm([2,4,6])
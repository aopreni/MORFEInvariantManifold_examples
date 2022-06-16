function out = DNF_example
  out{1} = @init;
  out{2} = @fun_eval;
  out{3} = [];
  out{4} = [];
  out{5} = [];
  out{6} = [];
  out{7} = [];
  out{8} = [];
  out{9} = [];
  out{10}= @userf1;
  end
  % --------------------------------------------------------------------------
  function [tspan,y0,options] = init
  end
  % --------------------------------------------------------------------------
  function jac = jacobian(t,x,mu)
  end
  % --------------------------------------------------------------------------
  function jacp = jacobianp(t,x,mu)
  end
  % --------------------------------------------------------------------------
  function hess = hessians(t,kmrgd,mu)
  end
  % --------------------------------------------------------------------------
  function hessp = hessiansp(t,kmrgd,mu)
  end
  %---------------------------------------------------------------------------
  function tens3  = der3(t,kmrgd,mu)
  end
  %---------------------------------------------------------------------------
  function tens4  = der4(t,kmrgd,mu)
  end
  %---------------------------------------------------------------------------
  function tens5  = der5(t,kmrgd,mu)
  end
  %
  % --------------------------------------------------------------------------
  function dydt = fun_eval(t,x,mu)
z1=x(1);
z2=x(2);
dydt=[
  + 99.08274571142393*z2^1 + 1.7660696285743194*z1^2*z2^1 + 1.7660696285743194*z2^3 + 0.25884991072457175*z1^4*z2^1 + 0.5176998214491435*z1^2*z2^3 + 0.2588499107245717*z2^5;
 +mu*z2 + -99.08274571142393*z1^1 + -1.7660696285743194*z1^3 + -1.7660696285743194*z1^1*z2^2 + -0.2588499107245717*z1^5 + -0.5176998214491434*z1^3*z2^2 + -0.25884991072457175*z1^1*z2^4;
];
end
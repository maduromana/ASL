
function [Ex,Px,tipo] = EnPot(f,T)
    Ex = double(int(f^2, -inf, inf));
    Px = double(limit((1/T)*int(f^2, -T/2, T/2), T, inf));
    if (Ex == inf || Ex == -inf)
        tipo = 'Potencia';
    elseif (Px == 0)
        tipo = 'Energia';
    else
        tipo = 'Indefinido';
    end   
end
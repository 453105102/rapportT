function [ ligne ] = genligne( lambda, largeur, profondeur )
    % G�neration d'une ligne de pixel

    ligne = zeros(1, largeur); % Pr�allocation de la ligne
    
    i = 1; % Position du pixel courant
    k = 1; % k-i�me intensit�
    
    while(i <= largeur)
        valeur = randi(profondeur); % G�n�ration de l'intensit�
        poisson = ceil(exprnd(1/lambda)); % Largeur de l'intensit�
        j = 0;
        while j <= poisson && i <= largeur
            ligne(1, i) = valeur;
            i = i + 1;
            j = j + 1;
        end
        k = k + 1;
    end
end

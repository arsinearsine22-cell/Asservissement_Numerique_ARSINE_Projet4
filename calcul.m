clear all; clc;

% --- Paramètres ---
tau   = 0.5;
tau_r = 0.4;
Te    = 0.1;   

% --- Calcul de a et a_r ---
a   = exp(-Te/tau);
a_r = exp(-Te/tau_r);

fprintf('a   = %.4f\n', a);
fprintf('a_r = %.4f\n', a_r);

% --- Matrice A ---
A_mat = [1,      0,     0,      0    ;
         0,      1,  (1-a),     0    ;
         0,  -a-1,     0,    (1-a)   ;
         0,      a,     0,      0    ];

% --- Vecteur b ---
b_vec = [1          ;
         -a_r+1+a   ;
         -a         ;
         0          ];

% --- Vérification singularité ---
fprintf('det(A) = %.6f\n', det(A_mat));

% --- Résolution ---
x = A_mat \ b_vec;

s1 = x(2);
r0 = x(3);
r1 = x(4);

fprintf('\n=== Résultats RST ===\n');
fprintf('s1 = %.4f\n', s1);
fprintf('r0 = %.4f\n', r0);
fprintf('r1 = %.4f\n', r1);
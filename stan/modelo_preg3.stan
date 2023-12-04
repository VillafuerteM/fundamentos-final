// The input data is a vector 'y' of length 'N'.
data {
  int n; // número de individuos
  int y; // número de seguidores para very liberal
}

parameters {
  real<lower=0,upper=1> theta; // parámetro de interés 
}

// The model to be estimated.
model {
  // inicial
  theta ~ beta(8, 160);
  y ~ binomial(n, theta);
}

generated quantities {
  real theta_inicial;
  theta_inicial = beta_rng(8, 160);
}


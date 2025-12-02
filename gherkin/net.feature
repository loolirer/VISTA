Funcionalidade: Comunicação e gerenciamento de rede do sistema VISTA

  Esta funcionalidade descreve os comportamentos esperados da camada de rede,
  incluindo descoberta automática, comunicação em baixa latência,
  credenciamento e transmissão de dados.

  # Os requisitos NET-02 e NET-06 não são contemplados aqui pois não são funcionais

  @NET-01
  Cenário: Reconhecer automaticamente os dispositivos de captura
    Dado que existem dispositivos na rede local
    Quando o sistema realiza o processo de descoberta
    Então todos os dispositivos devem ser identificados

  @NET-03
  Cenário: Alternar método de comunicação em caso de falha
    Dado que um método de conexão falhe
    Quando o sistema detecta a falha
    Então ele deve alternar automaticamente para outro método disponível

  @NET-04
  Cenário: Transmitir a nuvem de pontos para múltiplos assinantes
    Dado que a nuvem de pontos está sendo reconstruída
    Quando o sistema publica os dados
    Então múltiplos clientes devem poder assiná-los simultaneamente

  @NET-05
  Cenário: Aceitar apenas dispositivos credenciados
    Dado que dispositivos tentam se conectar ao sistema
    Quando seus dados de credenciamento são verificados
    Então somente os dispositivos autorizados devem ser aceitos

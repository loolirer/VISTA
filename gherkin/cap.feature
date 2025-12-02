Funcionalidade: Regras e condições da captura de movimento do sistema VISTA

  Esta funcionalidade descreve os comportamentos esperados durante o processo
  de captura, incluindo requisitos de calibração, sincronização, segmentação,
  taxa de triangulação e acurácia.  

  # Os requisitos CAP-05, CAP-06, CAP-07, CAP-08, CAP-09, CAP-10, CAP-11 e CAP-12 não são contemplados aqui pois não são funcionais

  @CAP-01
  Cenário: Salvar calibração intrínseca automaticamente
    Dado que um dispositivo concluiu sua calibração intrínseca
    Quando o processo é finalizado
    Então os dados devem ser salvos em disco

  @CAP-02
  Cenário: Bloquear captura quando há dispositivos sem calibração intrínseca
    Dado que nem todos os dispositivos estão intrinsecamente calibrados
    Quando o usuário solicita iniciar a captura
    Então o sistema deve impedir o início da captura

  @CAP-03
  Cenário: Bloquear captura quando falta calibração extrínseca
    Dado que não há calibração extrínseca ativa
    Quando o usuário solicita iniciar a captura
    Então o sistema deve impedir o início da captura

  @CAP-04
  Cenário: Indicar necessidade de recalibração
    Dado que houve alteração que comprometeu a calibração
    Quando o sistema detecta inconsistências
    Então deve notificar o usuário da necessidade de recalibrar

Funcionalidade: Operação da Interface Humano–Máquina do sistema VISTA

  A Interface Humano–Máquina (IHM) é o componente responsável pela exibição de informações do sistema e interação
  direta com o usuário. Nela estará informações relevantes aos dispositivos, operações 
  de calibração, captura, visualizações e controles fornecidos ao usuário.

  @IHM-01
  Cenário: Exibir informações completas dos dispositivos
    Dado que existem dispositivos conectados ao sistema
    Quando o usuário acessa a tela de informações
    Então a IHM deve exibir todas as informações relevantes de cada dispositivo

  @IHM-02
  Cenário: Atualizar lista de dispositivos dinamicamente
    Dado que um dispositivo entra ou sai da rede
    Quando ocorre a alteração no estado da rede
    Então a IHM deve atualizar a lista automaticamente

  @IHM-03
  Cenário: Solicitar calibração intrínseca
    Dado que um dispositivo está inativo
    Quando o usuário solicita a calibração intrínseca
    Então o sistema deve iniciar o processo de calibração intrínseca

  @IHM-04
  Cenário: Salvar calibração intrínseca no servidor
    Dado que uma calibração intrínseca foi concluída
    Quando o usuário solicita salvá-la
    Então o sistema deve armazenar os dados no servidor central

  @IHM-05
  Cenário: Solicitar calibração extrínseca global
    Dado que todos os dispositivos estão conectados
    Quando o usuário solicita a calibração extrínseca
    Então o sistema deve iniciar o processo simultâneo em todos os dispositivos

  @IHM-06
  Cenário: Solicitar atualização do referencial global
    Dado que há um referencial ativo
    Quando o usuário solicita sua atualização
    Então o sistema deve atualizar o referencial em todos os dispositivos

  @IHM-07
  Cenário: Registrar calibração extrínseca
    Dado que uma calibração extrínseca foi concluída
    Quando o usuário solicita salvá-la
    Então o sistema deve armazenar os dados no servidor central

  @IHM-08
  Cenário: Carregar calibração salva
    Dado que existe uma calibração salva no servidor
    Quando o usuário solicita carregá-la
    Então o sistema deve disponibilizar os dados carregados

  @IHM-09
  Cenário: Exibir visualização 3D estática da calibração
    Dado que existe uma calibração extrínseca válida
    Quando o usuário acessa a visualização estática
    Então o sistema deve exibir o modelo 3D interativo

  @IHM-10
  Cenário: Iniciar uma captura
    Dado que o sistema está calibrado
    Quando o usuário solicita iniciar a captura
    Então o sistema deve iniciar o processo de captura

  @IHM-11
  Cenário: Visualizar reconstrução em tempo real
    Dado que a captura está em andamento
    Quando marcadores são reconstruídos
    Então o sistema deve exibir a reconstrução em tempo real

  @IHM-12
  Cenário: Cancelar um processo ativo
    Dado que existe um processo em execução
    Quando o usuário solicita o cancelamento
    Então o sistema deve interromper o processo

  @IHM-13
  Cenário: Definir delay de início da captura
    Dado que o usuário está configurando a captura
    Quando ele define um tempo de delay
    Então o sistema deve aguardar esse tempo antes de iniciar

  @IHM-14
  Cenário: Definir duração da captura
    Dado que o usuário está configurando a captura
    Quando define o tempo de duração
    Então o sistema deve executar a captura nesse intervalo

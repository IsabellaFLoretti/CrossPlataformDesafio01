void main() {
  final pacientes = [
    'Rodrigo Rahman|35|Desenvolvedor|SP',
    'Manoel Silva|12|Estudante|AL',
    'Joaquim Rahman|18|Estudante|SP',
    'Fernando Verne|35|Estudante|PE',
    'Gustavo Silva|40|Desenvolvedor|CE',
    'Sandra Silva|40|Desenvolvedor|MG',
    'Regina Verne|35|Dentista|MG',
    'João Rahman|55|Jornalista|RJ',
  ];

//1:
  final pacientesMaisDe20Anos = pacientes.where((paciente) {
    final idade = int.parse(paciente.split('|')[1]);
    return idade > 20;
  }).map((paciente) => paciente.split('|')[0]);

  print('Pacientes com mais de 20 anos:');
  pacientesMaisDe20Anos.forEach((nome) => print(nome));

//2:
  final contagemPorProfissao = Map<String, int>();
  pacientes.forEach((paciente) {
    final profissao = paciente.split('|')[2];
    contagemPorProfissao[profissao] = (contagemPorProfissao[profissao] ?? 0) + 1;
  });

  print('Quantidade de pacientes por profissão:');
  contagemPorProfissao.forEach((profissao, quantidade) {
    print('$profissao: $quantidade');
  });
  
}

package Sistema;
/**
 *
 * @author alees
 */
import entidades.Funcionario;
import entidades.Manutencao;
import entidades.Objeto;
import entidades.TipoObjeto;
import java.util.ArrayList;
import java.util.Scanner;
import entidades.Emprestimo;

public class Sistema {
    public static ArrayList<Funcionario> funcionarios = new ArrayList<>();
    public static ArrayList<TipoObjeto> tipoobjetos = new ArrayList<>();
    public static ArrayList<Objeto> objetos = new ArrayList<>();
    public static ArrayList<Manutencao> manutencoes = new ArrayList<>();
    public static ArrayList<Emprestimo> emprestimos = new ArrayList<>();
    
	public static void main(String[] args) {	
		menu();
	}
	
        //Menu principal
	static void menu() {
        Scanner menu = new Scanner(System.in);
            int opcao;
            do {
                System.out.print("|--- SISTEMA DE EMPRÉSTIMO DE OBJETOS ---|\n");
                System.out.print("| Opção 1 - Incluir                      |\n");
                System.out.print("| Opção 2 - Consultar                    |\n");
                System.out.print("| Opção 3 - Alterar                      |\n");
                System.out.print("| Opção 4 - Excluir Objeto               |\n");
                System.out.print("| Opção 5 - Realizar Emprestimo          |\n");
                System.out.print("| Opção 6 - Relatório de Empréstimo      |\n");
                System.out.print("| Opção 0 - Sair                         |\n");
                System.out.print("|----------------------------------------|\n");
                
                System.out.print("Digite uma opção: ");
                opcao = menu.nextInt();
                
                switch (opcao) {
                    case 1 -> menuCadastros();
                    case 2 -> menuConsultas();
                    case 3 -> alterar();
                    case 4 -> excluir();
                    case 5 -> emprestimo();
                    case 6 -> relatorios();
                    case 0 -> {
                        System.out.println("Saindo...");
                        System.exit(0);
                    }
                    default -> System.out.print("\nOpção Inválida!");
                }
            }while (opcao != 0);
        }
	
        //menu de Cadastros
	static void menuCadastros() {
            int id, idade, id_objeto;
            String nome, tipo, descricao, solucao, status, data;

        try (Scanner op = new Scanner(System.in)) {
            Scanner opString = new Scanner(System.in); 
            
            int opcao;
            do {
                System.out.print("\n|-------------- CADASTROS ---------------|\n");
                System.out.print("| Opção 1 - Cadastro de Clientes         |\n");
                System.out.print("| Opção 2 - Cadastro de tipos de Objetos |\n");
                System.out.print("| Opção 3 - Cadastro de Objetos          |\n");
                System.out.print("| Opção 4 - Cadastro de Manutenções      |\n");
                System.out.print("| Opção 5 - Voltar                       |\n");
                System.out.print("| Opção 0 - Sair                         |\n");
                System.out.print("|----------------------------------------|\n");
                System.out.print("Digite uma opção: ");
                opcao = op.nextInt();
                
                switch (opcao) {
                    case 1 -> {
                        System.out.println("Informe um id para o funcionário: ");
                        op.nextLine();
                        id = op.nextInt();
                        
                        System.out.println("Informe o nome: ");
                        nome = op.next();
                        
                        System.out.println("Informe a idade: ");
                        idade = op.nextInt();
                        
                        System.out.println("Informe o endereço: ");
                        String endereco = opString.nextLine();
                        
                        Funcionario funcionario = new Funcionario(id, nome, idade, endereco);
                        funcionarios.add(funcionario);
                        System.out.println("\nCadastro concluído com suceso.\n");
                    }
                    case 2 -> {
                        System.out.println("Informe um id para o tipo de objeto: ");
                        op.nextLine();
                        id = op.nextInt();
                        
                        System.out.println("Informe o nome para o tipo de objeto: ");
                        nome = op.next();
                        
                        TipoObjeto tipoobjeto = new TipoObjeto(id, nome);
                        tipoobjetos.add(tipoobjeto);
                        System.out.println("\nCadastro concluído com suceso.\n");
                    }
                    case 3 -> {
                        System.out.println("Informe um id para o objeto: ");
                        op.nextLine();
                        id = op.nextInt();
                        
                        System.out.println("Informe o ID do TIPO DE OBJETO a qual ele pertence: ");
                        int id_tipo_objeto = op.nextInt();
                        
                        System.out.println("Informe um nome para o objeto: ");
                        nome = op.next();
                        
                        System.out.println("Informe a situação do objeto (Ativo/Inativo): ");
                        String situacao = op.next();
                        
                        System.out.println("Informe o peso do objeto (use vírgula): ");
                        Double peso = op.nextDouble();
                        
                        Objeto objeto = new Objeto(id, id_tipo_objeto, nome, situacao, peso);
                        objetos.add(objeto);
                        System.out.println("\nCadastro concluído com suceso.\n");
                    }
                    case 4 -> {
                        System.out.println("Informe um id para a Manutenção: ");
                        op.nextLine();
                        id = op.nextInt();
                        System.out.println("Informe o id do bjeto estragado: ");
                        id_objeto = op.nextInt();
                        System.out.println("Informe o tipo de manutenção desejada: ");
                        tipo = opString.nextLine();
                        System.out.println("Descreva o problema: ");
                        descricao = opString.nextLine();
                        System.out.println("Descreva uma possível solução: ");
                        solucao = opString.nextLine();
                        System.out.println("Qual o status do objeto? (Ativo/Inativo)");
                        status = opString.nextLine();
                        System.out.println("Qual a data de hoje?");
                        data = op.next();
                        
                        Manutencao manutencao = new Manutencao(id, id_objeto, tipo, descricao, solucao, status, data);
                        manutencoes.add(manutencao);
                        System.out.println("\nCadastro concluído com suceso.\n");
                    }
                    case 5 -> {menu();}
                    case 0 -> {System.out.println("Saindo...");
                    System.exit(0);}
                    default -> System.out.print("\nOpção Inválida!");
                }
            }while (opcao != 0);
        }     
            }
        
        static void menuConsultas(){
        try (Scanner op = new Scanner(System.in)) {
            int opcao;
            do {
                System.out.print("\n|-------------- CADASTROS ---------------|\n");
                System.out.print("| Opção 1 - Consulta de Clientes         |\n");
                System.out.print("| Opção 2 - Consulta de Tipos de Objetos |\n");
                System.out.print("| Opção 3 - Consulta de Objetos          |\n");
                System.out.print("| Opção 4 - Consulta de Manutenções      |\n");
                System.out.print("| Opção 5 - Voltar                       |\n");
                System.out.print("| Opção 0 - Sair                         |\n");
                System.out.print("|----------------------------------------|\n");
                System.out.print("Digite uma opção: ");
                opcao = op.nextInt();
                
                switch (opcao) {
                    case 1 -> { 
                        for(Funcionario f : funcionarios){
                            System.out.println(f);
                        }   }
                    case 2 -> { 
                        for(TipoObjeto t : tipoobjetos){
                            System.out.println(t);
                        }   }
                    case 3 -> {
                        for(Objeto o : objetos){
                            System.out.println(o);
                        }   }
                    case 4 -> {
                        for(Manutencao m : manutencoes){
                            System.out.println(m);
                        }   }
                    case 5 -> menu();
                    case 0 -> {System.out.println("Saindo...");
                    System.exit(0);}
                    default -> System.out.print("\nOpção Inválida!");
                }
            }while (opcao != 0);
        }
        }   
        
        static void alterar(){
        try (Scanner op = new Scanner(System.in)) {
            int opcao;
            int indice;
            String nome, endereco, situacao;
            int id, idade, id_tipo_objeto;
            Double peso;
            do {
                System.out.print("\n|-------------- ALTERAÇÕES ---------------|\n");
                System.out.print("| Opção 1 - Alterar funcionário           |\n");
                System.out.print("| Opção 2 - Alterar Objeto                |\n");
                System.out.print("| Opção 3 - Voltar                        |\n");
                System.out.print("| Opção 0 - Sair                          |\n");
                System.out.print("|-----------------------------------------|\n");
                System.out.print("Digite uma opção: ");
                opcao = op.nextInt();
                
                switch(opcao){
                    case 1 -> {
                        System.out.println("Informe o índice do funcionáro (começando em 0): ");
                        indice = op.nextInt();
                        
                        System.out.println("Informe o id: ");
                        id = op.nextInt();
                        
                        System.out.println("Informe o nome: ");
                        nome = op.next();
                        System.out.println("Informe a idade: ");
                        idade = op.nextInt();
                        System.out.println("Informe o endereco: ");
                        endereco = op.next();
                        
                        Funcionario funcionario = new Funcionario(id, nome, idade, endereco);
                        funcionarios.set(indice, funcionario);
                        
                        System.out.println("Os funcionários agora são: \n");
                        for(Funcionario f : funcionarios){
                            System.out.println(f);
                        }
                        
                    }
                    case 2 -> {
                        System.out.println("Informe o índice do Objeto (começando em 0): ");
                        indice = op.nextInt();
                        
                        System.out.println("Informe um id para o objeto: ");
                        op.nextLine();
                        id = op.nextInt();
                        
                        System.out.println("Informe o ID do TIPO DE OBJETO a qual ele pertence: ");
                        id_tipo_objeto = op.nextInt();
                        
                        System.out.println("Informe um nome para o objeto: ");
                        nome = op.next();
                        
                        System.out.println("Informe a situação do objeto (Ativo/Inativo): ");
                        situacao = op.next();
                        
                        System.out.println("Informe o peso do objeto (use vírgula): ");
                        peso = op.nextDouble();
                        
                        Objeto objeto = new Objeto(id, id_tipo_objeto, nome, situacao, peso);
                        objetos.set(indice, objeto);
                        
                        System.out.println("Os objetos agora são: \n");
                        for(Objeto o : objetos){  
                            System.out.println(o);
                        }
                    }
                    case 3 -> {menu();}
                    case 0 -> System.exit(0);
                }  
                
            }while (opcao != 0);
        }
                }
        
        static void relatorios(){
                Scanner op = new Scanner(System.in);
                int resp;
                System.out.println("\nBem-vindo ao relatório de empréstimos!");
                System.out.println("\nGostaria de gerar o relatório? (1 para SIM e 2 para NÃO)");
                resp = op.nextInt();
            
                switch(resp){
                    case 1 -> {
                        for(Emprestimo em : emprestimos){
                            System.out.println(em);
                        }
                    }
                    case 2 -> {
                        System.out.println("Entendi. Voltando para o menu...");
                        menu();
                    }
                }
            }   
        
        static void emprestimo(){
                Scanner op = new Scanner(System.in);
                int id, id_funcionario, id_objeto;
                String situacao;
                System.out.println("Digite um id para o empréstimo: ");
                id = op.nextInt();
                System.out.println("Digite o id do funcionário que está emprestando: ");
                id_funcionario = op.nextInt();
                System.out.println("Digite o id do objeto que está esendo emprestado: ");
                id_objeto = op.nextInt();
                System.out.println("Digite a situacao (emprestado/devolvido: ");
                situacao = op.next();
                Emprestimo emprestimo = new Emprestimo(id, id_funcionario, id_objeto, situacao);
                emprestimos.add(emprestimo);
                System.out.println("\nEmpréstimo efetuado com suceso.\n");
        }
        
        static void excluir(){
            Scanner op = new Scanner(System.in);
            int indice;
            System.out.println("Digite o índice do objeto que deseja exluir (0 como primeira posição: ");
            indice = op.nextInt();
            
            objetos.remove(indice);
            System.out.println("Lista de objetos: " + objetos.toString());
            
        }
}

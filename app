import java.util.ArrayList;
import java.util.Scanner;

public class App {

	public static void main(String[] args) {
	ArrayList <Perfil> cadastros = new ArrayList <Perfil>(); // alunos
	Aluno l = new Aluno();
	Professor p = new Professor();
	ArrayList <Projeto> projetoArray = new ArrayList <Projeto>();//projeto
	ArrayList <Trabalho> trabalhoArray = new ArrayList <Trabalho>();//trabalho
	Scanner s = new Scanner(System.in);//scanner
	//Janela j = new Janela();
	int menu = 0, voltar = 1;
	
	do{
	System.out.println("DIGITE UMA OPCAO:");
	menu = s.nextInt();
	switch(menu){
	case 1:		
		l.CadastarAcademico();
		cadastros.add(l);
		break;
	case 2:
		p.CadastrarProfessor();
		cadastros.add(p);
		break;
	case 3:
		Projeto pp = new Projeto();
		pp.CadastrarProjeto();
		projetoArray.add(pp);
		break;
	case 4:
		Trabalho t = new Trabalho();
		t.CadastrarTrabalho();
		trabalhoArray.add(t);
		break;
	case 5:
		int aux = 0;
		String alt = "";
		if(cadastros.isEmpty())
		{
			System.out.println("NÃO É PERMITIDO CADASTRAR TRABALAHOS SEM ALUNOS E PROFESSORES CADASTRADOS");
		}
		else
		{
			Object x;
			System.out.println("1 PARA ALUNO | 2 PARA PROFESSOR");
			aux = s.nextInt();
			
			for(int i = 0; i < cadastros.size(); i++)
			{
				x = cadastros.get(i);
				if(x instanceof Aluno && aux == 1)
				{
					s.nextLine();
					System.out.println("Digite o nome do Aluno para alterar: ");
					alt = s.nextLine();
					if(l.getNome().equalsIgnoreCase(alt))
					{
						System.out.println("1 - NOME");
						System.out.println("\n2 - USER");
						System.out.println("\n3 - CURSO");
						System.out.println("\n4 - SITUACAO");
						System.out.println("DIGITE O QUE DESEJA ALTERAR: ");
						aux = s.nextInt();
						l.AlteraAluno(aux);
					}
				}
				if(x instanceof Professor && aux == 2)
				{
					s.nextLine();
					System.out.println("Digite o nome do Aluno para alterar: ");
					alt = s.nextLine();
					if(l.getNome().equalsIgnoreCase(alt))
					{
					System.out.println("1 - NOME");
					System.out.println("\n2 - USER");
					System.out.println("\n3 - AREA DE ATUACAO");
					System.out.println("DIGITE O QUE DESEJA ALTERAR: ");
					aux = s.nextInt();
					p.AlteraProfessor(aux, p);
					}
				}
			}
		}
		break;
		}
	}while(voltar == 1);
	}
}

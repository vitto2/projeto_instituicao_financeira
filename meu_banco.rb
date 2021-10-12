class Banco 

    attr_accessor :valor_compra, :saldo,:deposito, :limite_cred
 
     def initialize(deposito)
         @deposito = deposito; 
         @sacar = 0;  
 
         if deposito <= 2000
             @limite_cred = (deposito / 100) * 25;  
         elsif deposito > 2000 && deposito <= 9999 
             @limite_cred = (deposito / 100) * 35
         elsif deposito > 9999 
             @limite_cred = (deposito / 100) * 45
         end 
     end 
 
     def depositar(deposito) 
         @deposito =  @deposito + deposito;
         @saldo = @deposito; 
     end
 
     def saldo
         puts  @saldo
     end  
 
     def sacar(valor_saque) 
          
         puts "Saque efetuado com sucesso."
     end 
 
     
 
     def limite 
         puts "Limite disponível #{@limite_cred}"
     end 
 end 
 
 cliente_1 = Banco.new(10000)
 cliente_1.depositar(5000)
 cliente_1.saldo 
  
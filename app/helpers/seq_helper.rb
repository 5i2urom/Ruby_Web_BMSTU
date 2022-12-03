# frozen_string_literal: true

module SeqHelper
    def seq
        params[:str].chomp.split(' ').map(&:to_i)
    end
    
    def len
        params[:num].to_f
    end
    
    def perfect(seq)
        count = 0
        all_seqs = []
        curr_seq = []
        match = false
        seq.each_index do |ind|
          num = seq[ind]
          sum = 0
          1.upto(num / 2) do |del|             # проверяем, является ли num совершенным числом
            sum += del if (num % del).zero?
          end
          if num == sum                        # если совершенное
            curr_seq.push(num.clone)
            match = true
          elsif match
            all_seqs.push(curr_seq.clone)
            curr_seq.clear
            match = false
            count += 1
          end
        end
    
        if match
          all_seqs.push(curr_seq.clone)
          curr_seq.clear
          match = false
          count += 1
        end
        if count.zero?
          flash[:error] = "В последовательности нет совершенных чисел"
          redirect_to root_path
        end
        [all_seqs, count]
    end
    
    def validate
        unless params[:str].match(/^-?\d+(\d+)?(\s-?\d+(\d+)?)*\s*$/)
          flash[:alert] = "Неверный ввод. Введите массив чисел через пробел"
          redirect_to root_path
        end
    end
    
    def same
        unless len==seq.length
          flash[:alert] = "Вы ввели не #{len.to_i} чисел"
          redirect_to root_path
        end
    end
    
    def must_int_pos
        unless params[:num].match(/^\d+$/)
          flash[:alert] = "Неверный ввод. Количество чисел должно быть целым и положительным"
          redirect_to root_path
        end
    end
end

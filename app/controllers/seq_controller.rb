class SeqController < ApplicationController
  def input
  end

  def view
    @count=0
    n=params[:num].to_i
    seq=params[:str].chomp.split(' ').map{|each| each.to_i}
    
    $all_seqs=Array.new
    $curr_seq=Array.new
    $match=false
    
    def when_not_match()
        $all_seqs.push($curr_seq.clone)
        $curr_seq.clear
        $match=false
    end
    
    seq.each_index do |ind|    
        num=seq[ind]
        sum=0
        1.upto(num/2) do |del|
            if num%del==0 then sum+=del
            end
        end
        if num==sum
            @count+=1
            $curr_seq.push(num.clone)
            $match=true
        elsif $match
            when_not_match
        end    
    end
    
    if $match
        when_not_match
    end
    @result=$all_seqs
  end
end

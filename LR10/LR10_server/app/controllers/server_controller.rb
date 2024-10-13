# frozen_string_literal: true

# operates with a sequence
class ServerController < ApplicationController
  include ServerHelper

  def result
    m = perfect(seq)
    @all_seqs = m[0]
    @count = m[1]
    @longest = @all_seqs.max { |s1, s2| s1.split(' ').length <=> s2.split(' ').length }

    @result = { all_seqs: @all_seqs, count: @count, longest: @longest }
    
    respond_to do |format|
      format.html
      format.xml { render xml: @result }
    end
  end
end

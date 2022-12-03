# frozen_string_literal: true

# operates with a sequence
class SeqController < ApplicationController
  include SeqHelper

  before_action :validate, only: :view
  before_action :must_int_pos, only: :view
  before_action :same, only: :view

  def input; end

  def view
    m = perfect(seq)
    @all_seqs = m[0]
    @count = m[1]
  end
end

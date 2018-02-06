# -*- coding: utf-8 -*-
require "sixarm_ruby_string_index_after_test"

describe String do

  describe "#index_after" do

    describe "with a target that is a string" do

      it "find" do
        expect("foogoohoo".index_after("oo")).must_equal 3
      end

    end

    describe "with a target that is a string, and an offset" do

      it "finds" do
        expect("foogoohoo".index_after("oo", 3)).must_equal 6
      end

    end

    describe "with a target that is a regexp" do

      it "finds" do
        expect("foogoohoo".index_after(/oo/)).must_equal 3
      end

    end

    describe "with a target that is a regexp, and an offset" do

      it "finds" do
        expect("foogoohoo".index_after(/oo/, 3)).must_equal 6
      end

    end

  end

end

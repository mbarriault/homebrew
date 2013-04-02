require 'formula'

# `brew used foo bar` now returns formula that use both foo and bar
# Rationale: If you want the union just run the command twice and
# concatenate the results.
# The intersection is harder to achieve with shell tools.

module Homebrew extend self
  def used
    raise FormulaUnspecifiedError if ARGV.named.empty?

    used = Formula.all.select do |f|
      ARGV.formulae.all? do |ff|
        f.recursive_deps.include? ff
      end
    end

	  used = used.select do |f|
      keg = HOMEBREW_CELLAR/f
      keg.directory? and not keg.subdirs.empty?
    end

    puts_columns used.map{|f| f.to_s}.sort
  end
end

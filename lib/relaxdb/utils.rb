module RelaxDB
  module Utils
    def self.included(base)
      base.extend(ClassMethods)
    end
    module ClassMethods
      def singularize(name)
        #FIXME: this is too bad, should copy Rails's solution
        name.to_s.downcase[0...-1].capitalize
      end
    end
  end
end
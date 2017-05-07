require 'pry'

languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}

def reformat_languages(languages)
  new_hash = {}


  languages.each do |style, names|
    names.each do |name, attribute|
      new_hash[name] = attribute
    end
  end


  languages.each do |style, names|
    names.each do |name, attribute|
      if new_hash[name][:style] == nil
        new_hash[name][:style] = []
        new_hash[name][:style] << style
      elsif
        new_hash[name][:style] << style
      end
    end
  end

  new_hash
end

reformat_languages(languages)

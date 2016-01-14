module RuboCop
  module Cop
    module Blueapron
      class TimeNowUtc < Cop
        TIME_NOW = s(:send, s(:const, nil, :Time), :now)

        MESSAGE = 'Time.now should be interpreted as UTC.'

        def on_send(node)
          return if node != TIME_NOW
          return if node.parent && node.parent.children.last == :utc

          add_offense(node, :expression, MESSAGE)
        end
      end
    end
  end
end

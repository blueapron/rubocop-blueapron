module RuboCop
  module Cop
    module Blueapron
      class DateTimeNowUtc < Cop
        DATE_TIME_NOW = s(:send, s(:const, nil, :DateTime), :now)

        MESSAGE = 'DateTime.now should be interpreted as UTC.'

        def on_send(node)
          return if node != DATE_TIME_NOW
          return if node.parent && node.parent.children.last == :utc

          add_offense(node, :expression, MESSAGE)
        end
      end
    end
  end
end

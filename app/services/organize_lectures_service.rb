class OrganizeLecturesService
  class << self
    def organizes_letures(params)
      raise StandardError, 'Params Is Blank.' if params.blank?

      raise StandardError, 'Params Is Numeric.' if params.is_a?(Numeric)

      @list_lectures_a = track_time_a(params)
      @list_lectures_b = track_time_b(params)
      @list_lectures = @list_lectures_a + @list_lectures_b
    rescue StandardError => e
      raise "Error: #{e.message} \n Backtrace: #{e.backtrace}"
    end

    private

    def track_time_a(lectures)
      @tracks_a = [
        { track: 'A', time: '09:00', lecture: '' },
        { track: 'A', time: '10:00', lecture: '' },
        { track: 'A', time: '10:45', lecture: '' },
        { track: 'A', time: '11:15', lecture: '' },
        { track: 'A', time: '12:00', lecture: 'Almoço' },
        { track: 'A', time: '13:00', lecture: '' },
        { track: 'A', time: '14:00', lecture: '' },
        { track: 'A', time: '14:45', lecture: '' },
        { track: 'A', time: '15:30', lecture: '' },
        { track: 'A', time: '16:00', lecture: '' },
        { track: 'A', time: '16:30', lecture: '' },
        { track: 'A', time: '17:00', lecture: 'Evento de Networking' }
      ]

      lectures.each do |lecture|
        case lecture
        when 'Diminuindo tempo de execução de testes em aplicações Rails enterprise 60min'
          @tracks_a.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '09:00' }
        when 'Reinventando a roda em ASP clássico 45min'
          @tracks_a.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '10:00' }
        when 'Apresentando Lua para as massas 30min'
          @tracks_a.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '10:45' }
        when 'Erros de Ruby oriundos de versões erradas de gems 45min'
          @tracks_a.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '11:15' }
        when 'Ruby on Rails: Por que devemos deixá-lo para trás 60min'
          @tracks_a.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '13:00' }
        when 'Erros comuns em Ruby 45min'
          @tracks_a.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '14:00' }
        when 'Programação em par 45min'
          @tracks_a.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '14:45' }
        when 'Ensinando programação nas grotas de Maceió 30min'
          @tracks_a.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '15:30' }
        when 'Ruby vs. Clojure para desenvolvimento backend 30min'
          @tracks_a.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '16:00' }
        when 'Otimizando CSS em aplicações Rails 30min'
          @tracks_a.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '16:30' }
        end
      end

      @tracks_a
    end

    def track_time_b(lectures)
      @tracks_b = [
        { track: 'B', time: '09:00', lecture: '' },
        { track: 'B', time: '10:00', lecture: '' },
        { track: 'B', time: '11:00', lecture: '' },
        { track: 'B', time: '11:30', lecture: '' },
        { track: 'B', time: '12:00', lecture: 'Almoço' },
        { track: 'B', time: '13:00', lecture: '' },
        { track: 'B', time: '13:45', lecture: '' },
        { track: 'B', time: '14:30', lecture: '' },
        { track: 'B', time: '15:00', lecture: '' },
        { track: 'B', time: '16:00', lecture: '' },
        { track: 'B', time: '17:00', lecture: 'Evento de Networking' }
      ]

      lectures.each do |lecture|
        case lecture
        when 'Trabalho remoto: prós e cons 60min'
          @tracks_b.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '09:00' }
        when 'A mágica do Rails: como ser mais produtivo 60min'
          @tracks_b.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '10:00' }
        when 'Aplicações isomórficas: o futuro (que talvez nunca chegaremos) 30min'
          @tracks_b.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '11:00' }
        when 'Codifique menos, Escreva mais! 30min'
          @tracks_b.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '11:30' }
        when 'Desenvolvimento orientado a gambiarras 45min'
          @tracks_b.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '13:00' }
        when 'Clojure engoliu Scala: migrando minha aplicação 45min'
          @tracks_b.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '13:45' }
        when 'Um mundo sem StackOverflow 30min'
          @tracks_b.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '14:30' }
        when 'Manutenção de aplicações legadas em Ruby on Rails 60min'
          @tracks_b.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '15:00' }
        when 'Rails para usuários de Django lightning'
          @tracks_b.select { |track_time| track_time[:lecture] << lecture if track_time[:time] == '16:00' }
        end
      end

      @tracks_b
    end
  end
end

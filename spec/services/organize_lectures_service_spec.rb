require 'rails_helper'
require 'organize_lectures_service'
require 'pry'

RSpec.describe OrganizeLecturesService do
  describe '.organizes_lectures' do
    let(:params_nil) { OrganizeLecturesService.organizes_letures(nil) }
    let(:params_empty) { OrganizeLecturesService.organizes_letures('  ') }
    let(:params_numeric) { OrganizeLecturesService.organizes_letures(7.0) }
    let(:params_lectures) { OrganizeLecturesService.organizes_letures(subject) }

    subject do
      [
        'Diminuindo tempo de execução de testes em aplicações Rails enterprise 60min',
        'Reinventando a roda em ASP clássico 45min',
        'Apresentando Lua para as massas 30min',
        'Erros de Ruby oriundos de versões erradas de gems 45min',
        'Erros comuns em Ruby 45min',
        'Rails para usuários de Django lightning',
        'Trabalho remoto: prós e cons 60min',
        'Desenvolvimento orientado a gambiarras 45min',
        'Aplicações isomórficas: o futuro (que talvez nunca chegaremos) 30min',
        'Codifique menos, Escreva mais! 30min',
        'Programação em par 45min',
        'A mágica do Rails: como ser mais produtivo 60min',
        'Ruby on Rails: Por que devemos deixá-lo para trás 60min',
        'Clojure engoliu Scala: migrando minha aplicação 45min',
        'Ensinando programação nas grotas de Maceió 30min',
        'Ruby vs. Clojure para desenvolvimento backend 30min',
        'Manutenção de aplicações legadas em Ruby on Rails 60min',
        'Um mundo sem StackOverflow 30min',
        'Otimizando CSS em aplicações Rails 30min'
      ]
    end

    context 'when the params' do
      it 'should be array' do
        expect(subject).to be_a(Array)
      end

      it 'should run raising an exception be if nil.' do
        expect { params_nil }.to raise_error(StandardError, 'Params Is Blank.')
      end

      it 'should run raising an exception be if empty.' do
        expect { params_empty }.to raise_error(StandardError, 'Params Is Blank.')
      end

      it 'should run raising an exception be if numeric.' do
        expect { params_numeric }.to raise_error(StandardError, 'Params Is Numeric.')
      end
    end

    context 'when output' do
      it 'should be array.' do
        expect(params_lectures).to be_a(Array)
      end

      it 'should be not nil' do
        expect(params_lectures).to be_truthy
      end
    end
  end
end

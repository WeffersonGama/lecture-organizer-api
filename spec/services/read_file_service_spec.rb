require 'rails_helper'
require 'read_file_service'
require 'pry'

RSpec.describe ReadFileService do
  describe '.read_file' do
    let(:attached_file) { File.join('/home/weffersongama/Documentos/proposals.txt') }
    let(:params_empty) { ReadFileService.read_file('  ') }
    let(:params_nil) { ReadFileService.read_file(nil) }
    let(:params_numeric) { ReadFileService.read_file(0.5) }
    let(:read_file_service) { ReadFileService.read_file(attached_file) }

    context 'when the params' do
      it 'should run raising an exception be if empty' do
        expect { params_empty }.to raise_error(StandardError, 'Params Is Blank.')
      end

      it 'should run raising an exception be if nil' do
        expect { params_nil }.to raise_error(StandardError, 'Params Is Blank.')
      end

      it 'should run raising an exception be if numeric' do
        expect { params_numeric }.to raise_error(StandardError, 'Params Is Numeric.')
      end

      it 'should be not nil' do
        expect(read_file_service).to be_truthy
      end

      it 'should run without raising an exception' do
        expect { read_file_service }.not_to raise_error
      end
    end

    context 'when the return' do
      it 'should be of type array' do
        expect(read_file_service).to be_a(Array)
      end

      it 'should be returns a lecture' do
        expect(read_file_service).to include('Programação em par 45min')
      end

      it 'should be not nil or false' do
        expect(read_file_service).to be_truthy
      end

      it 'should return the exact number of lectures' do
        expect(read_file_service.count).to eq(19)
      end
    end
  end
end

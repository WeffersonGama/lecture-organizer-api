class ReadFileService
  class << self
    def read_file(args)
      raise StandardError, 'Params Is Blank.' if args.blank?

      raise StandardError, 'Params Is Numeric.' if args.is_a?(Numeric)

      @titles = []
      File.foreach(args, chomp: true) { |line| @titles << line }
      @titles
    rescue StandardError => e
      raise e
    end
  end
end

module Core
  def self.decode(bankcode, serial)
    bankCode = bankcode
    bankCodeSplit = bankCode.to_s.split('').map(&:to_i)
    serialNuber = serial

    serialNuberSplit = serialNuber.to_s.split('').map(&:to_i)
    calculateNuban = (bankCodeSplit[0]*3+bankCodeSplit[2]*7+bankCodeSplit[2]*3+serialNuberSplit[0]*3+serialNuberSplit[1]*7+serialNuberSplit[2]*3+serialNuberSplit[3]*3+serialNuberSplit[4]*7+serialNuberSplit[5]*3+serialNuberSplit[6]*3+serialNuberSplit[7]*7+serialNuberSplit[8]*3)
    standardNumber = 10

    makeModulos = calculateNuban %= standardNumber

    checkDigit = makeModulos - standardNumber
    completedNuban = "#{serialNuber}#{checkDigit}"

    # spinner loader
    loading = 0.step(100, 5) do |i|
      printf("\rGenerating: [%-20s]", "=" * (i/5))
      sleep(0.10)
    end
    puts loading
    puts "Voila! here's your NUBAN"
    return completedNuban
  end
end

After do |scenario|
    scenario_name = scenario.name.gsub(/\$+/,'_').tr('/','_')
    if scenario.failed?
        tirar_foto(scenario_name.downcase!, 'falhou')
        
    else
        tirar_foto(scenario_name.downcase!, 'falhou')
        
    end

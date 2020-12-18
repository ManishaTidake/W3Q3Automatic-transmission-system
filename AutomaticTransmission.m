
model = 'Auto_Gear_Transmission';
load_system(model);

ah = find_system(model, 'FindAll', 'on', 'type', 'annotation');
for i = 1:length(ah)
   ao = get_param(ah(i), 'Object');
   ao.delete;
end

open_system(model);
close_system([model '/Scope'])


set_param(0,'ExportBackgroundColorMode','white');

open_system([model '/GearLogic'],'force')
sim(model)
open_system([model '/Scope'])

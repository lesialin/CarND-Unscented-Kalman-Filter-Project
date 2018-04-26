arg_list = argv();
NIS_filename = arg_list{1}
NIS_limit = str2num(arg_list{2})
nis_data = load(NIS_filename);
nis_lim = ones(1,length(nis_data))*NIS_limit;
f = figure;
plot(nis_data)
hold on
plot(nis_lim,'r')
legend('NIS data','limitation');
title(NIS_filename)
png_filename = [NIS_filename(1:end-4) , ".png"];
print(png_filename,"-dpng");
import pandas as pd
import os

path = input("Enter .narrowPeak regions file full path:")
savePath = os.path.dirname(path)
filename = os.path.splitext(os.path.basename(path))[0]

print("Saving in... ", savePath)
#Loading file into a dataframe
regionsFile = pd.read_csv(path, sep='\t', header=None, usecols=[0, 1, 2], names=['chr', 'start', 'end'])
# Add 'chr' prefix to the chromosome column
regionsFile['chr'] = regionsFile['chr'].apply(lambda x: 'chr' + str(x))
#Number of regions before dropping duplicates
print(len(regionsFile))
#Dropping duplicates
regionsFile_Unique = regionsFile.drop_duplicates()
#Number of regions after dropping duplicates
print(len(regionsFile_Unique))
#Adding a fourth column of generic naming
regionsFile_Unique["Region_Name"] = ["Region" + str(i+1) for i in range(len(regionsFile_Unique))]
print(regionsFile_Unique)
# Save the filtered DataFrame to a new .bed file
output_bed_file = savePath + "/" + filename +"_for_GREAT_chr_prefix_unique.bed"
regionsFile_Unique.to_csv(output_bed_file, sep='\t', header=False, index=False)

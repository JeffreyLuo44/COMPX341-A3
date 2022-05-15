import os

for folder, dirs, files in os.walk('./src'):
    for file in files:
        if os.path.splitext(file.lower())[-1].lower() == '.ts':
              with open(os.path.join(folder, file), 'r+', encoding='utf-8') as f:
                existingLines = f
                firstLine = f.readline()
                if firstLine != '// Name: Jeffrey Luo ID: 1535901\n':
                  content = f.read()
                  f.seek(0, 0)
                  f.write('// Name: Jeffrey Luo ID: 1535901'.rstrip('\r\n') + '\n' + content)
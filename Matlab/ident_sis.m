% Configuración del puerto serial en MATLAB
serialPort = 'COM9';  % Reemplaza 'COMx' con tu puerto COM correcto
baudRate = 115200;  % Ajusta la velocidad de baudios según tu configuración

% Abre el puerto serial
s = serial(serialPort, 'BaudRate', baudRate);
fopen(s);

% Configuración de la figura y los arreglos
figure;
timeStepArray = [];
voltajeArray = [];
velocidadArray = [];

% Número de datos que deseas recibir en tiempo real
numDatos = 100;  % Puedes ajustar según tus necesidades

% Bucle para recibir y graficar datos en tiempo real
for i = 1:numDatos
    % Recibe datos por la conexión serial
    dataString = fscanf(s, '%s');
    
    % Desdobla los datos en voltaje y velocidad
    data = str2double(strsplit(dataString, ';'));
    
    % Almacena datos en los arreglos
    timeStepArray = [timeStepArray, i];
    voltajeArray = [voltajeArray, data(1)];
    velocidadArray = [velocidadArray, data(2)];
    
    % Grafica los datos en tiempo real
    plot(timeStepArray, voltajeArray, '-o', 'DisplayName', 'Voltaje');
    hold on;
    plot(timeStepArray, velocidadArray, '-x', 'DisplayName', 'Velocidad');
    hold off;
    
    title('Datos de Voltaje y Velocidad');
    xlabel('Time Step');
    ylabel('Valor');
    legend;
    
    drawnow;  % Actualiza la figura
    
    % Pausa para permitir la recepción de datos
    pause(0.1);  % Puedes ajustar el tiempo de pausa según sea necesario
end

% Cierra el puerto serial
fclose(s);

% Limpieza
delete(s);
clear s;

% Guarda los datos en el workspace
save('datosSerial.mat', 'timeStepArray', 'voltajeArray', 'velocidadArray');

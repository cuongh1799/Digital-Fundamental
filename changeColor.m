function [copy] = changeColor(a, x)

copy = a;

dimension = size(a);
row_n = dimension (1);
col_n = dimension (2);

switch x
% Red
    case 'r'
        for row = 1:row_n
            for col = 1:col_n
                pixel_red = a(row,col,1);
                pixel_green = a(row,col,2);
                pixel_blue = a(row,col,3);
                
                 if (pixel_red >= 200) && (pixel_green <= 55) && (pixel_green >= 5)  && (pixel_blue > 10)
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end

% Yellow
     case 'y'
        for row = 1:row_n
            for col = 1:col_n
                pixel_red = a(row,col,1);
                pixel_green = a(row,col,2);
                pixel_blue = a(row,col,3);
                
                if (pixel_red >= 220) && (pixel_green >= 200) && (pixel_blue < 60)
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end

% Green
     case 'g'
        for row = 1:row_n
            for col = 1:col_n
                pixel_red = a(row,col,1);
                pixel_green = a(row,col,2);
                pixel_blue = a(row,col,3);
                
                if (pixel_red < 50) && (pixel_green < 230) && (pixel_blue < 130)
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end
       
% Blue
     case 'b'
        for row = 1:row_n
            for col = 1:col_n
                pixel_red = a(row,col,1);
                pixel_green = a(row,col,2);
                pixel_blue = a(row,col,3);
                
                if (pixel_red <= 70) && (pixel_green < 100) && (pixel_blue >= 120)
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end

% Orange
     case 'o'
        for row = 1:row_n
            for col = 1:col_n
                pixel_red = a(row,col,1);
                pixel_green = a(row,col,2);
                pixel_blue = a(row,col,3);
                
                    if (pixel_red >= 120) && (pixel_green > 37) && (pixel_green <= 150)  && (pixel_blue <= 55)
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end

% Magenta
     case 'm'
        for row = 1:row_n
            for col = 1:col_n
                pixel_red = a(row,col,1);
                pixel_green = a(row,col,2);
                pixel_blue = a(row,col,3);
                
                if (pixel_red >= 90) && (pixel_red <= 198) && (pixel_green >= 35) && (pixel_green <= 90) && (pixel_blue >= 100) && (pixel_blue <= 230)
                    copy(row,col,1) = 0;
                    copy(row,col,2) = 0;
                    copy(row,col,3) = 0;
                end
            end
        end
    otherwise
        disp('Incorrect selection, please choose from the menu');
end

% IF versus SWITCH
%--- Do not edit ---

x = date;
monthstr = x(4:6);

% %--- start making changes below ---
% if any(strcmpi(monthstr,{'Dec','Jan','Feb'}))
%     timeofyear = 'Winter';
% elseif any(strcmpi(monthstr,{'Mar','Apr','May'}))
%     timeofyear = 'Spring';
% elseif any(strcmpi(monthstr,{'Jun','Jul','Aug'}))
%     timeofyear = 'Summer';
% elseif any(strcmpi(monthstr,{'Sep','Oct','Nov'}))
%     timeofyear = 'Fall';
% else
%     timeofyear = [];
% end

switch monthstr
    case {'Dec','Jan','Feb'}
        timeofyear = 'Winter';
    case {'Mar','Apr','May'}
        timeofyear = 'Spring';
    case {'Jun','Jul','Aug'}
        timeofyear = 'Summer';
    case {'Sep','Oct','Nov'}
        timeofyear = 'Fall';
    otherwise
        timeofyear = [];
end
        

%-- Do not edit ---
disp(['It is ',timeofyear, '!'])
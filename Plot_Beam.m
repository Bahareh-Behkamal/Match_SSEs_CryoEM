%% Plot Results of Beam
%
clc; clear; close all
%
Type = 3;
%
%% AR Model Identification

if Type == 1
    
Level = 100;

if Level == 10      
load('accbeam.mat');
data = zscore(accbeam); clear accbeam
[nData,nSensor,nMeas] = size(data);
for i = 1:nMeas
    h = waitbar(0,'AR Model Identification');
    for j = 1:nSensor
        waitbar(j/nSensor)
        [~,~,QLM(j,i),CvLM] = lmctest(data(:,j,i));
    end
    close(h)
end
elseif Level == 100
load('BeamModelSelection.mat')

figure
h1 = subplot(1,2,1);
bar(QLM(:,1:5))
xlabel('Sensor no.'); ylabel('Q_{LM}')
title('(a)'); legend('Test 1','Test 2','Test 3','Test 4','Test 5')
set(gca','XLim',[0 16])
% map = [0.2, 0.1, 0.5;0.1, 0.5, 0.8; 0.2, 0.7, 0.6; 0.8, 0.7, 0.3; 0.9, 1, 0];
colormap(h1,jet)

h2 = subplot(1,2,2);
bar(QLM(:,[6 8 9 10]))
xlabel('Sensor no.'); ylabel('Q_{LM}')
title('(b)'); legend('Case 2','Case 3','Case 4','Case 5')
set(gca','XLim',[0 16])

% figure
% h1 = subplot(1,2,1);
% bar3(QLM(:,1:5)); ylabel('Sensor no.'); xlabel('Test no.'); 
% zlabel('Q_{LM}'); title('(a)'); set(gca','YLim',[0 16])
% colormap(h1,autumn)
% 
% h2 = subplot(1,2,2);
% bar3(QLM(:,[6 8 9 10])); ylabel('Sensor no.'); xlabel('Case no.'); 
% zlabel('Q_{LM}'); title('(b)'); set(gca','YLim',[0 16])
% colormap(h2,winter)
end
end

%% Order Determination
if Type == 2
load('BeamOrderCompare.mat');

% AR Model Orders
figure
h1 = subplot(3,1,1); bar(arOrderNew); 
xlabel('Number of sensors'); ylabel('AR orders'); title('(a)')
set(gca,'YLim',[18 28]);
colormap(h1,parula)

h2 = subplot(3,1,2); bar(arOrderOrg); 
xlabel('Number of sensors'); ylabel('AR orders'); title('(b)')
set(gca,'YLim',[37 53]);
colormap(h2,jet)

h3 = subplot(3,1,3); bar(arOrderBic); 
xlabel('Number of sensors'); ylabel('AR orders'); title('(c)')
set(gca,'YLim',[39 65])
colormap(h3,hot)

Sensor = [5 14];
Test = 5;
cv = 31.4101;
figure
for i = 1:numel(Sensor)
    subplot(1,2,i)
    stairs(TestNew.QLB{Sensor(i),Test},'LineWidth',1.5,'Color','b','LineStyle',':',...
        'Marker','o','MarkerFaceColor','c','MarkerSize',4);
    xlabel('Number of iterations'); ylabel('LBQ test statistics');
    set(gca,'XLim',[0 arOrderNew(Sensor(i),Test)+1]); hold on
    line([0 arOrderNew(Sensor(i),Test)+1],[cv cv],'LineStyle','--','LineWidth',1,...
        'Color','r')
    if i == 1; title('(a)'); end
    if i == 2; title('(b)'); end 
end
figure
for i = 1:numel(Sensor)
    subplot(1,2,i)
    stairs(TestNew.QLB{Sensor(i),Test},'LineWidth',1.5,'Color','b','LineStyle',':',...
        'Marker','o','MarkerFaceColor','c','MarkerSize',4);
    set(gca,'XLim',[0 arOrderNew(Sensor(i),Test)+1]); hold on
    line([0 arOrderNew(Sensor(i),Test)+1],[cv cv],'LineStyle','--','LineWidth',1,...
        'Color','r')
end

figure
f1 = subplot(1,2,1);
Time = [Time_New Time_Org Time_BIC];
bar(Time); xlabel('Number of measurements in training phase')
ylabel('Time (sec)'); legend('Improved','Original','BIC')
colormap(f1,'jet'); title('(a)')

load('BeamResTimeCompare.mat')
f2 = subplot(1,2,2);
bar(TimeTotal,0.5,'stacked')
ylabel('Time (sec)'); title('(b)')
legend('Order Selection in Training','Residual Extraction in Training','Residual Extraction in Monitoring')
end
%
%% Plots of Damage Localization Results

if Type == 3
    
Case = [1 3 4 5];

load('BeamDL.mat'); load('BeamPartitioning');
DL_KLD = 1E-4*DL_KLD;
Thre_KLD = 1E-4*Thre_KLD;

% -------------------------------------------------------------------------
% Damage Localization
% -------------------------------------------------------------------------

figure
for i = 1:numel(Case)
    subplot(2,2,i)
    f1 = bar(DL_KLDEP(:,Case(i)));
    xlabel('Sensor no.'); ylabel('KLDEP');
    set(gca,'XLim',[0 16]); hold on
    DL = find(DL_KLDEP(:,Case(i)) > Thre_KLDEP);
    f2 = bar(DL,DL_KLDEP(DL,Case(i)),'g'); hold on
    f3 = line([0 16],[Thre_KLDEP Thre_KLDEP],'LineStyle','--','LineWidth',1.2,...
        'Color','r');
    if i == 1; title('(a)'); end
    if i == 2; title('(b)'); end
    if i == 3; title('(c)'); end
    if i == 4; title('(d)'); legend([f1,f2,f3],'UDL','DL','Threshold'); end
end

figure

for i = 1:numel(Case)
    subplot(2,2,i)
    f1 = bar(DL_KLD(:,Case(i)));
    xlabel('Sensor no.'); ylabel('KLDEP');
    set(gca,'XLim',[0 16]); hold on
    DL = find(DL_KLD(:,Case(i)) > Thre_KLD);
    f2 = bar(DL,DL_KLD(DL,Case(i)),'y'); hold on
    f3 = line([0 16],[Thre_KLD Thre_KLD],'LineStyle','--','LineWidth',1.2,...
        'Color','r');
    if i == 1; title('(a)'); end
    if i == 2; title('(b)'); end
    if i == 3; title('(c)'); end
    if i == 4; title('(d)'); legend([f1,f2,f3],'UDL','DL','Threshold'); end
end

figure
for i = 1:numel(Case)
    subplot(2,2,i)
    f1 = bar(DL_KSD(:,Case(i)));
    xlabel('Sensor no.'); ylabel('KSTS');
    set(gca,'XLim',[0 16]); hold on
    DL = find(DL_KSD(:,Case(i)) > Thre_KSD);
    f2 = bar(DL,DL_KSD(DL,Case(i)),'c'); hold on
    f3 = line([0 16],[Thre_KSD Thre_KSD],'LineStyle','--','LineWidth',1.2,...
        'Color','r');
    if i == 1; title('(a)'); end
    if i == 2; title('(b)'); end
    if i == 3; title('(c)'); end
    if i == 4; title('(d)'); legend([f1,f2,f3],'UDL','DL','Threshold'); end
end
close all

figure
f1 = subplot(3,1,1);
bar(DL_KLDEP(:,[1,3:5])); hold on
line([0 16],[Thre_KLDEP Thre_KLDEP],'LineStyle','--','LineWidth',1,'Color','k');
xlabel('Sensor no.'); ylabel('KLDEP'); colormap(f1,'summer')
legend('Case 2','Case 3','Case 4','Case 5','Threshold','Location','Northeastoutside');
set(gca,'XLim',[0 16],'YLim',[0 0.24]); title('(a)')

f2 = subplot(3,1,2);
bar(DL_KLD(:,[1,3:5])); hold on
line([0 16],[Thre_KLD Thre_KLD],'LineStyle','--','LineWidth',1,'Color','k');
xlabel('Sensor no.'); ylabel('KLD'); colormap(f2,'cool')
legend('Case 2','Case 3','Case 4','Case 5','Threshold','Location','Northeastoutside');
set(gca,'XLim',[0 16]); title('(b)')

f3 = subplot(3,1,3);
bar(DL_KSD(:,[1,3:5])); hold on
line([0 16],[Thre_KSD Thre_KSD],'LineStyle','--','LineWidth',1,'Color','k');
xlabel('Sensor no.'); ylabel('KSD'); colormap(f3,'hot')
legend('Case 2','Case 3','Case 4','Case 5','Threshold','Location','Northeastoutside');
set(gca,'XLim',[0 16]); title('(c)')

% -------------------------------------------------------------------------
% Damage Quantification
% -------------------------------------------------------------------------

Sensor = 8;
for i = 1:numel(Case)
    DQ_KLDEP(:,i) = DL_KLDEP(Sensor,Case(i));
    DQ_KLD(:,i) = DL_KLD(Sensor,Case(i));
    DQ_KSD(:,i) = DL_KSD(Sensor,Case(i));
end

% Area Plot
figure
subplot(1,3,1)
area(DQ_KLDEP,'FaceColor','g','LineStyle','none'); hold on
stem(DQ_KLDEP,'LineStyle','none','LineWidth',2,'Color','r','MarkerFaceColor','r'); hold on
line([0 5],[Thre_KLDEP Thre_KLDEP],'LineStyle','--','LineWidth',2,'Color','r');
xlabel('Case no.'); ylabel('KLDEP')
set(gca,'XLim',[0.8 4.2],'YLim',[0.08 0.24]); title('(a)')

subplot(1,3,2)
area(DQ_KLD,'FaceColor','y','LineStyle','none'); hold on
stem(DQ_KLD,'LineStyle','none','LineWidth',2,'Color','r','MarkerFaceColor','r'); hold on
line([0 5],[Thre_KLD Thre_KLD],'LineStyle','--','LineWidth',2,'Color','r');
xlabel('Case no.'); ylabel('KLD')
set(gca,'XLim',[0.8 4.2],'YLim',[2100 3800]); title('(b)')

subplot(1,3,3)
area(DQ_KSD,'FaceColor','b','LineStyle','none'); hold on
stem(DQ_KSD,'LineStyle','none','LineWidth',2,'Color','r','MarkerFaceColor','r'); hold on
line([0 5],[Thre_KSD Thre_KSD],'LineStyle','--','LineWidth',2,'Color','r');
xlabel('Case no.'); ylabel('KSD')
set(gca,'XLim',[0.8 4.2],'YLim',[0.025 0.05]); title('(c)')

% BAR Plot
figure
subplot(1,3,1)
bar(DQ_KLDEP,'FaceColor','g'); hold on
line([0 5],[Thre_KLDEP Thre_KLDEP],'LineStyle','--','LineWidth',1.5,'Color','r');
xlabel('Case no.'); ylabel('KLDEP')
set(gca,'XLim',[0 5]); title('(a)')

subplot(1,3,2)
bar(DQ_KLD,'FaceColor','y'); hold on
line([0 5],[Thre_KLD Thre_KLD],'LineStyle','--','LineWidth',1.5,'Color','r');
xlabel('Case no.'); ylabel('KLD')
set(gca,'XLim',[0 5]); title('(b)')

subplot(1,3,3)
bar(DQ_KSD,'FaceColor','c'); hold on
line([0 5],[Thre_KSD Thre_KSD],'LineStyle','--','LineWidth',1.5,'Color','r');
xlabel('Case no.'); ylabel('KSD')
set(gca,'XLim',[0 5]); title('(c)')

% -------------------------------------------------------------------------
% Partitioning
% -------------------------------------------------------------------------

[nSensor,nState] = size(PartitionEy{1,1});
for j = 1:nState
    for k = 1:nSensor
        NyLast(k,j) = length(PartitionEy{:,1}{k,j}{end,1});
    end
end
map = [1 1 1 ; 1 0.6 0.6];
figure
subplot(3,1,1)
heatmap(nPartition{1,1}','XLabel','Sensor no.','YLabel','Group no.',...
    'Title','(a)','ColorbarVisible','off','Colormap',map,'FontSize',9,'FontName','Arial');
subplot(3,1,2)
heatmap(nSampleEy{1,1}','XLabel','Sensor no.','YLabel','Group no.',...
    'Title','(b)','ColorbarVisible','off','Colormap',summer,'FontSize',9,'FontName','Arial')
subplot(3,1,3)
heatmap(NyLast','XLabel','Sensor no.','YLabel','Group no.',...
    'Title','(c)','ColorbarVisible','off','Colormap',parula,'FontSize',9,'FontName','Arial')

figure
for i = 1:4
    subplot(4,1,i)
    stem(nSampleEx{1,1}{i,1},'LineStyle',':','LineWidth',1,'Marker','square',...
        'MarkerSize',5)
    set(gca,'YLim',[min(min(nSampleEx{1,1}{i,1}))-5 max(max(nSampleEx{1,1}{i,1}))+5])
end

load('BeamComTimeDL.mat');
ComTime = [Time_KLDEP(Case,:) 0.7*Time_KLD(Case,:) 0.5*Time_KLD(Case,:)];
figure
bar(ComTime); xlabel('Case no.'); ylabel('Time (sec)');
legend('KLDEP','KLD','KSTS')
end
%
%% New Plots for DL

if Type == 4
    
Case = [1 3 4 5];

load('BeamDL.mat'); load('BeamPartitioning.mat');

Method = 3;

figure
for i = 1:numel(Case)
    subplot(4,1,i)
    f1 = bar(DL_KLDEP(:,Case(i)));
    ylabel('KLDEP');
    set(gca,'XLim',[0 16]); hold on
    DL = find(DL_KLDEP(:,Case(i)) > Thre_KLDEP);
    f2 = bar(DL,DL_KLDEP(DL,Case(i)),'y'); hold on
    f3 = line([0 16],[Thre_KLDEP Thre_KLDEP],'LineStyle','--','LineWidth',1.2,...
        'Color','r');
    if i == 1; title('Case 2'); end
    if i == 2; title('Case 3'); end
    if i == 3; title('Case 4'); end
    if i == 4; title('Case 5'); 
        legend([f1,f2,f3],'UDL','DL','Threshold');
        xlabel('Number of sensors'); 
    end
end

figure
for i = 1:numel(Case)
    subplot(4,1,i)
    f1 = bar(DL_KLD(:,Case(i)));
    ylabel('KLDEP');
    set(gca,'XLim',[0 16]); hold on
    DL = find(DL_KLD(:,Case(i)) > Thre_KLD);
    f2 = bar(DL,DL_KLD(DL,Case(i)),'r'); hold on
    f3 = line([0 16],[Thre_KLD Thre_KLD],'LineStyle','--','LineWidth',1.2,...
        'Color','r');
    if i == 1; title('Case 2'); end
    if i == 2; title('Case 3'); end
    if i == 3; title('Case 4'); end
    if i == 4; title('Case 5'); 
        legend([f1,f2,f3],'UDL','DL','Threshold'); 
        xlabel('Number of sensors');
    end
end

figure
for i = 1:numel(Case)
    subplot(4,1,i)
    f1 = bar(DL_KSD(:,Case(i)));
    ylabel('KSD');
    set(gca,'XLim',[0 16]); hold on
    DL = find(DL_KSD(:,Case(i)) > Thre_KSD);
    f2 = bar(DL,DL_KSD(DL,Case(i)),'c'); hold on
    f3 = line([0 16],[Thre_KSD Thre_KSD],'LineStyle','--','LineWidth',1.2,...
        'Color','r');
    if i == 1; title('Case 2'); end
    if i == 2; title('Case 3'); end
    if i == 3; title('Case 4'); end
    if i == 4; title('Case 5'); 
        legend([f1,f2,f3],'UDL','DL','Threshold'); 
        xlabel('Number of sensors'); 
    end
end
Sensor = 8;
for i = 1:numel(Case)
    DQ_KLDEP(:,i) = DL_KLDEP(Sensor,Case(i));
    DQ_KLD(:,i) = DL_KLD(Sensor,Case(i));
    DQ_KSD(:,i) = DL_KSD(Sensor,Case(i));
end

figure

subplot(1,3,1)
bar(DQ_KLDEP,'FaceColor','y'); hold on
line([0 5],[Thre_KLDEP Thre_KLDEP],'LineStyle','--','LineWidth',1.5,'Color','k');
xlabel('Number of damaged cases'); ylabel('KLDEP')
set(gca,'XLim',[0 5]); title('(a)')

subplot(1,3,2)
bar(DQ_KLD,'FaceColor',[1 0.4 0.4]); hold on
line([0 5],[Thre_KLD Thre_KLD],'LineStyle','--','LineWidth',1.5,'Color','k');
xlabel('Number of damaged cases'); ylabel('KLD')
set(gca,'XLim',[0 5]); title('(a)')

subplot(1,3,3)
bar(DQ_KSD,'FaceColor','c'); hold on
% bar(1,DQ_KSD(1),'FaceColor',[0 0.75 0.4])
line([0 5],[Thre_KSD Thre_KSD],'LineStyle','--','LineWidth',1.5,'Color','k');
xlabel('Number of damaged cases'); ylabel('KSD')
set(gca,'XLim',[0 5]); title('(b)')

end
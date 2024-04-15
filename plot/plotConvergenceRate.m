function plotConvergenceRate(grid_sizes, errors)
% ����������
convergence_order = zeros(size(errors));
for i = 2:length(errors)
    convergence_order(i) = log(errors(i-1) / errors(i)) / log(grid_sizes(i-1) / grid_sizes(i));
end

% ������������ߴ�Ķ���ͼ
% ����ͼ��
loglog(grid_sizes, errors, '-o', 'LineWidth', 2, 'MarkerSize', 8);
xlabel('Mesh size', 'FontSize', 14);
ylabel('Error', 'FontSize', 14);
title('Convergence', 'FontSize', 16);
grid on;
set(gca, 'FontSize', 12);
% ���������
% disp('�����ף�');
% disp(convergence_order);
end
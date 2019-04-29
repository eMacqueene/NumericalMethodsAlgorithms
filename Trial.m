 % A = [2 2 2 3; 4 3 2 1; 8 7 9 6; 0 6 7 9]
% 
% [n,n]=size(A);
% L=eye(n); P=L; U=A;
% for k=1:n
%     [pivot m]=max(abs(U(k:n,k)));
%     m=m+k-1;
%     if m~=k
%         % interchange rows m and k in U
%         temp=U(k,:);
%         U(k,:)=U(m,:);
%         U(m,:)=temp;
%         % interchange rows m and k in P
%         temp=P(k,:);
%         P(k,:)=P(m,:);
%         P(m,:)=temp;
%         if k >= 2
%             temp=L(k,1:k-1);
%             L(k,1:k-1)=L(m,1:k-1);
%             L(m,1:k-1)=temp;
%         end
%     end
%     for j=k+1:n
%         L(j,k)=U(j,k)/U(k,k);
%         U(j,:)=U(j,:)-L(j,k)*U(k,:);
%     end
% end
% L
% U
% P


% L = eye(length(A));
% P = eye(length(A));
% piv = P;
% 
% % if A(1,1) = 0 % Will cause an issue with naive Gauss method.
% a = A;   
% if abs(A(1,1)) < abs(A(2,1)) && abs(A(2,1)) > abs(A(3,1))
%    A(1,:) = A(2,:);
%    A(2,:) = a(1,:) ;% Preparing intermediate matrix.
%    piv(1,:) = P(2,:);
%    piv(2,:) = P(1,:);
%    
% elseif A(1,1) < A(3,1) && A(3,1) > A(2,1)
%    A(1,:) = A(3,:);
%    A(3,:) = a(1,:);
%    piv(1,:) = P(3,:);
%    piv(3,:) = P(1,:);
% end % Pivots the first row with the row with the highest coeff.
% % in the first column.
% 
% L(2,1) = A(2,1)/A(1,1); % Ratio of pivoted matrix coefficients stored in [L].
% A(2,:) = A(2,:)-(L(2,1)*A(1,:)); % Creates new second row in [A].
% 
% L(3,1) = A(3,1)/A(1,1);
% A(3,:) = A(3,:)-(L(3,1)*A(1,:));
% 
% a = A; % Setup for another intermediate matrix
% if abs(A(3,2)) > abs(A(2,2))
%    A(2,:) = a(3,:);
%    A(3,:) = a(2,:);
%    piv(2,:) = P(3,:);
%    piv(3,:) = P(2,:);
% end % Pivots second row with third if third has higher column coefficient.
% 
% L(3,2) = A(3,2)/A(2,2);
% A(3,:) = A(3,:)-(L(3,2)*A(2,:));
% L
% U = A
% P = piv
% 
% 

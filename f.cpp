#include <iostream>
#include <string>
#include <math.h>
#include <vector>
using namespace std;

void print_mat(vector<vector<int>> mat)
{
    size_t s1 = mat.size();
    size_t s2 = mat[0].size();

    for (size_t x2_i = 0; x2_i < s1; x2_i++)
    {
        for (size_t y2_i = 0; y2_i < s2; y2_i++)
        {
            cout << mat[x2_i][y2_i] << ' ';
        }
        cout << "\n";
    }
}
int min_vector_int(vector<int> vec, int &min_index){
    int min_val = vec[0];
    for (size_t i = 0; i < vec.size(); i++){
        if(min_val > vec[i]){
            min_val = vec[i];
            min_index = i;
        }
    }
    return min_val;
}
int max_vector_int(vector<int> vec, int &max_index){
    int max_val = vec[0];
    for (size_t i = 0; i < vec.size(); i++){
        if(max_val < vec[i]){
            max_val = vec[i];
            max_index = i;
        }
    }
    return max_val;
}
// int rec(vector<vector<int» &mat, int x, int y, int h, int w, int &min_val)
// {
//     if (x != h and y != w and mat[x][y] != 0 and mat[x][y] != 1000001)
//     {
//         rec(mat, x + 1, y, h, w, min_val);
//         rec(mat, x, y + 1, h, w, min_val);
//     }
// }

int main()
{
    int h = 0;
    cin >> h;
    int w = 0;
    cin >> w;
    vector<vector<int>> mat_in(h + 2, vector<int>(w + 2, 100000001));
    vector<vector<int>> mat(h + 2, vector<int>(w + 2, -1));
    for (int x_i = 1; x_i < h + 1; x_i++)
    {
        for (int y_i = 1; y_i < w + 1; y_i++)
        {
            cin >> mat_in[x_i][y_i];
        }
    }

    // print_mat(mat_in);
    // cout « endl;
    
    mat[1][1] = mat_in[1][1];
    // for (int x_i = 2; x_i <= h; x_i++)
    // {
    //     vector<int> val_2 = {mat_in[x_i][y_i], mat_in[-x_i][y_i]};

    // }
    for (int x_i = 1; x_i <= h; x_i++)
    {
        for (int y_i = 1; y_i <= w; y_i++)
        {
            vector<int> val_1 = {mat[x_i - 1][y_i], mat[x_i][y_i-1]};
            int min_val_i = 0;
            int max_val = max_vector_int(val_1, min_val_i);
            vector<int> val_2 = {mat_in[x_i][y_i], max_val};
            int min_val = min_vector_int(val_2, min_val_i);
            mat[x_i][y_i] = min_val;
            mat[1][1] = mat_in[1][1];
            // vector<int> val_2 = {mat[x_i][y_i], mat[x_i - 1][y_i], mat[x_i][y_i-1]};
            // int max_val_i = 0;
            // int max_val = max_vector_int(val_2, max_val_i);
            // mat[x_i][y_i] = max_val;
            // if (mat[x_i - 1][y_i] < mat[x_i][y_i - 1])
            //     mat[x_i][y_i] = mat[x_i - 1][y_i] + mat_in[x_i][y_i];
            // else
            //     mat[x_i][y_i] = mat[x_i][y_i - 1] + mat_in[x_i][y_i];
            // mat[1][1] = mat_in[1][1];
        }
    }

    // print_mat(mat)
    cout << mat[h][w];
    cout << endl;
}

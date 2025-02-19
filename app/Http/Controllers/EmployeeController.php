<?php

namespace App\Http\Controllers;

use App\Models\User; // Pastikan ini memang model yang ingin digunakan untuk Employee
use Illuminate\Http\Request;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $users = User::all(); // Mengambil semua pengguna
        return view('employee.listEmployee', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('employee.addEmployee'); // Menampilkan form tambah karyawan
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255|unique:users,email',
            'password' => 'required|string|min:4',
            'role' => 'required|string|in:admin,employee,customer',
            'address' => 'required|string|max:255',
            'notelp' => 'required|string|regex:/^([0-9\s\-\+\(\)]*)$/|max:15',
            // Hapus validasi image
        ]);

        // Masukkan data tanpa gambar
        User::create($validatedData);

        return redirect()->route('employeeList')->with('successcreate', 'Karyawan Baru Ditambahkan');
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        $employee = User::findOrFail($id);
        return view('employee.editEmployee', compact('employee')); // Menampilkan form edit karyawan
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $employee = User::findOrFail($id);

        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|max:255|unique:users,email,' . $employee->id,
            'password' => 'required|string|min:4',
            'role' => 'required|string|in:admin,employee,customer',
            'address' => 'required|string|max:255',
            'notelp' => 'required|string|regex:/^([0-9\s\-\+\(\)]*)$/|max:15',
            // Hapus validasi image
        ]);

        // Update data karyawan di database tanpa gambar
        $employee->update($validatedData);

        return redirect()->route('employeeList')->with('successupdate', 'Karyawan Berhasil Diperbarui');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $employee = User::findOrFail($id);

        // Hapus karyawan dari database tanpa menghapus gambar
        $employee->delete();

        return redirect()->route('employeeList')->with('successdelete', 'Karyawan Berhasil Dihapus');
    }
}

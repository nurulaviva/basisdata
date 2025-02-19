@extends('layouts.app')
@section('content')
<div class="page-wrapper">
    <div class="content">
        <div class="row">
            <div class="col-lg-4 col-sm-6 col-12 d-flex">
                <div class="card shadow p-3 mb-5 bg-white rounded w-100">
                    <div class="card-body text-center">
                        <h5 class="card-subtitle">
                            Admin
                            <span class="badge badge-admin">{{ $adminCount }}</span>
                        </h5>
                        <i data-feather="user" class="mt-2 text-danger"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 col-12 d-flex">
                <div class="card shadow p-3 mb-5 bg-white rounded w-100">
                    <div class="card-body text-center">
                        <h5 class="card-subtitle">
                            Employees
                            <span class="badge badge-employee">{{ $employeeCount }}</span>
                        </h5>
                        <i data-feather="user-check" class="mt-2 text-success"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 col-12 d-flex">
                <div class="card shadow p-3 mb-5 bg-white rounded w-100">
                    <div class="card-body text-center">
                        <h5 class="card-subtitle">
                            Transaksi Masuk
                            <span class="badge badge-transaction">{{ $transactionCount }}</span>
                        </h5>
                        <i data-feather="file-text" class="mt-2 text-warning"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

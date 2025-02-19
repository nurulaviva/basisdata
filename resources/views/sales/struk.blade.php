<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Struk Transaksi</title>
    <!-- Tambahkan Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">
    <!-- CSS untuk garis pemisah -->
    <style>
        body {
            font-family: 'Poppins', sans-serif;
        }

        .separator {
            border-top: 1px dashed #000;
            /* Garis putus-putus */
            width: 100%;
            /* Pastikan lebarnya 100% dari kontainer */
            margin: 10px 0;
            /* Tambahkan sedikit margin atas dan bawah */
        }
    </style>
</head>

<body>
    <div class="container mt-5">
        <div class="card bg-white">
            <div class="card-body text-center">
                <h5 class="card-title">Transaksi Berhasil</h5>
                <p class="card-text">Jumlah yang harus dibayar: Rp
                    {{ number_format($transaction->total_amount, 0, ',', '.') }}</p>
                <p class="card-text">Kembalian: Rp
                    {{ number_format($payment_amount - $transaction->total_amount, 0, ',', '.') }}</p>
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#receiptModal">Lihat
                    Struk</button>
            </div>
        </div>
        <div class="text-center">
            <button type="button" class="btn"><a href="{{ route('order') }}"
                    class="btn btn-primary">Kembali</a></button>
        </div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="receiptModal" tabindex="-1" role="dialog" aria-labelledby="receiptModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header bg-success text-white">
                    <h5 class="modal-title" id="receiptModalLabel">Struk Transaksi</h5>
                    <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card bg-light">
                        <div class="card-body">
                            <h5 class="card-title text-center font-weight-bold">Transaksi Berhasil</h5>
                            <hr>
                            <p class="card-text"><strong>Nama Kasir:</strong> {{ $transaction->user->name }}</p>
                            <p class="card-text"><strong>Kode Struk:</strong> {{ $transaction->id }}</p>
                            <hr>

                            <!-- Daftar Item -->
                            <h5 class="text-center font-weight-bold">Daftar Item</h5>
                            <table class="table table-bordered">
                                <thead class="thead-success">
                                    <tr>
                                        <th>Menu</th>
                                        <th>Qty</th>
                                        <th>Subtotal</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($transaction->details as $detail)
                                        <tr>
                                            <td>{{ $detail->menu->name }}</td>
                                            <td class="text-center">{{ $detail->quantity }}</td>
                                            <td class="text-right">Rp
                                                {{ number_format($detail->subtotal, 0, ',', '.') }}</td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <hr>

                            <!-- Rincian Pembayaran -->
                            <h5 class="text-center font-weight-bold">Rincian Pembayaran</h5>
                            <table class="table">
                                <tr>
                                    <th>Total</th>
                                    <td class="text-right">Rp
                                        {{ number_format($transaction->total_amount, 0, ',', '.') }}</td>
                                </tr>
                                <tr>
                                    <th>Uang yang Diberikan</th>
                                    <td class="text-right">Rp {{ number_format($payment_amount, 0, ',', '.') }}</td>
                                </tr>
                                <tr>
                                    <th>Kembalian</th>
                                    <td class="text-right">Rp
                                        {{ number_format($payment_amount - $transaction->total_amount, 0, ',', '.') }}
                                    </td>
                                </tr>
                            </table>
                            <hr>
                            <p class="text-center font-italic">Terima Kasih Atas Pesanannya :)</p>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
                </div>
            </div>
        </div>
    </div>
    </div>

    <!-- Tambahkan Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>

</html>

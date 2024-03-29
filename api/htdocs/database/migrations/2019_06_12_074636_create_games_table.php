<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGamesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up ()
    {
        Schema::create ( 'games' , function ( Blueprint $table ) {
            $table->bigIncrements ( 'id' );

            $table->string ( 'title' );
            $table->text ( 'description' );
            $table->tinyInteger ( 'complexity' );
            $table->boolean ( 'isActive' );
            $table->softDeletes ();

            $table->timestamps ();
        } );
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down ()
    {
        Schema::dropIfExists ( 'games' );
    }
}

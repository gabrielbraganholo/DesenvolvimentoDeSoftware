package com.example.demo;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Scene;
import javafx.stage.Stage;

import java.io.IOException;

public class HelloApplication extends Application {
    @Override
    public void start(Stage stage) throws IOException {

        java.net.URL url = HelloApplication.class.getResource(
                "/com/example/demo/view/PessoaView.fxml"
        );

        System.out.println("Caminho FXML: " + url);

        FXMLLoader fxmlLoader = new FXMLLoader(url);

        Scene scene = new Scene(fxmlLoader.load(), 750, 450);

        stage.setTitle("Cadastro de Pessoas");
        stage.setScene(scene);
        stage.show();
    }

    public static void main(String[] args) {
        launch();
    }
}
package com.service;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.iservice.IMediaService;
import com.models.Media;
import com.models.MediaType;
import com.repository.MediaRepository;

@Service
public class MediaService implements IMediaService {

	@Autowired
	private MediaRepository mediaRepository;

	@Override
	public List<String> uploadImages(MultipartFile[] images) {
		String src = "src/main/webapp/";
		String rootPath = "data/images/";
		ArrayList<String> nameEncode = new ArrayList<String>();
		try {
			File uploadDir = new File(src + rootPath);
			if (!uploadDir.exists()) {
				uploadDir.mkdirs();
			}
			for (MultipartFile img : images) {
				String name = img.getOriginalFilename();

				String[] nameImg = name.split("\\.");
				name = UUID.randomUUID().toString() + "." + nameImg[nameImg.length - 1];
				File fileServer = new File(uploadDir.getAbsolutePath() + File.separator + name);
				BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(fileServer));
				out.write(img.getBytes());
				out.close();
				nameEncode.add(rootPath + name);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nameEncode;

	}

	@Override
	public String uploadFile(MultipartFile file) {
		String src = "src/main/webapp/";
		String rootPath = "data/files/";
		String nameEncode = null;
		try {
			File uploadDir = new File(src + rootPath);
			if (!uploadDir.exists()) {
				uploadDir.mkdirs();
			}
			String name = file.getOriginalFilename();

			String[] nameImg = name.split("\\.");
			name = UUID.randomUUID().toString() + "." + nameImg[nameImg.length - 1];
			File fileServer = new File(uploadDir.getAbsolutePath() + File.separator + name);
			BufferedOutputStream out = new BufferedOutputStream(new FileOutputStream(fileServer));
			out.write(file.getBytes());
			out.close();
			nameEncode = rootPath + name;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return nameEncode;
	}

	@Override
	public MediaType mediaType(String name) {
		String[] nameImg = name.split("\\.");
		String ext = nameImg[nameImg.length - 1];
		if (ext.equalsIgnoreCase("pdf")) {
			return MediaType.BOOK;
		}
		return MediaType.VIDEO;
	}

	@Override
	public void save(Media media) {
		mediaRepository.save(media);

	}
	@Override
	public List<Media> findByAll() {
		List<Media> listAll =  mediaRepository.findAll();
		return listAll;
	}

	@Override
	public Media findById(long id) {
		Media mediaById = mediaRepository.findById(id);
		return mediaById;
	}

	@Override
	public void resizeImages(String inputImagePath, String outputImagePath, int scaledWidth, int scaledHeight)
			throws IOException {
		File inputFile = new File(inputImagePath);
		BufferedImage inputImage = ImageIO.read(inputFile);

		BufferedImage outputImage = new BufferedImage(scaledWidth, scaledHeight, inputImage.getType());

		Graphics2D g2d = outputImage.createGraphics();
		g2d.drawImage(inputImage, 0, 0, scaledWidth, scaledHeight, null);
		g2d.dispose();

		String formatName = outputImagePath.substring(outputImagePath.lastIndexOf(".") + 1);

		ImageIO.write(outputImage, formatName, new File(outputImagePath));
	}

}

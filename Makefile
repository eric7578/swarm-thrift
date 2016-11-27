OUT_DIR = $(CURDIR)/swarm-thrift
IMG_TAG = swarm-thrift

.PHONY: clean, image, node, js

$(OUT_DIR): clean
	mkdir $(OUT_DIR)
clean:
	rm -rf $(OUT_DIR)
image:
	docker build -t $(IMG_TAG) .
node: $(OUT_DIR)
	docker run --rm -v "$(OUT_DIR):/gen-nodejs" $(IMG_TAG) sh thrift/bootstrap/node
js: $(OUT_DIR)
	docker run --rm -v "$(OUT_DIR):/gen-js" $(IMG_TAG) sh thrift/bootstrap/js

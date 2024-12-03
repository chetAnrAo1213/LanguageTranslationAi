<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!-- Button trigger modal -->
<button type="button" class="btn btn-outline-info" data-toggle="modal" data-target="#exampleModalCenter">
  Ai Model Info
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
 <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Integrated Ai Models:</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div>
          The Integrated Models are of different Open-Source LLM's from <strong><a href="https://ollama.com/search" target="_blank">Ollama Platform</a></strong> which can run on your Local Machine.
        </div>
        <hr>
        <div class="gemma">
          <h5>Gemma : V2 <h6>currently in use</h6></h5>
          <div class="card mb-0 border-0">
            <div class="row g-0 align-items-center">
              <div class="col-md-5">
                <img
                  src="https://pbs.twimg.com/tweet_video_thumb/GT0-m3kXcAAvW7T.jpg"
                  class="img-fluid rounded-start" alt="Ai Img" style="max-height: 200px; object-fit: cover;">
              </div>
              <div class="col-md-7">
                <div class="card-body p-2">
                 <a href="https://ollama.com/library/gemma2" target="_blank"><h5 class="card-title">Gemma2:2b</h5></a> 
                  <p class="card-text mb-0">Developed by <code>Google</code>, the model is trained on 2Billion Parameters efficient enough to use for text generation, summarization, etc.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <hr>
        <h6>Also Visit:</h6>
        <div>
        <h5>Llama : V3 </h5>
          <div class="card mb-0 border-0">
            <div class="row g-0 align-items-center">
              <div class="col-md-5">
                <img
                  src="https://media.licdn.com/dms/image/D4D12AQFct9sc53UzgA/article-cover_image-shrink_600_2000/0/1722602618840?e=2147483647&v=beta&t=sEXtIGWh9xkJpjn1Jzta1PjjgEwGgbK_gqgBE1nD1ME"
                  class="img-fluid rounded-start" alt="Ai Img" style="max-height: 200px; object-fit: cover;">
              </div>
              <div class="col-md-7">
                <div class="card-body p-2">
                  <a href="https://ollama.com/library/llama3.1" target="_blank"><h5 class="card-title">  Llama 3.1:8b</h5></a>
                  <p class="card-text mb-0"><code>Large Language Model Meta AI</code> Developed by <code>Meta</code>, the model is trained on 405Billion Parameters pro-efficient enough to use for image to text generation, video analysis, etc.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div>
        <h5>Mistral AI</h5>
          <div class="card mb-0 border-0">
            <div class="row g-0 align-items-center">
              <div class="col-md-5">
                <img
                  src="https://www.hpcwire.com/wp-content/uploads/2024/02/mistral-ai.png"
                  class="img-fluid rounded-start" alt="Ai Img" style="max-height: 200px; object-fit: cover;">
              </div>
              <div class="col-md-7">
                <div class="card-body p-2">
                  <a href="https://ollama.com/library/mistral" target="_blank"><h5 class="card-title"> Mistral:7b</h5></a>
                  <p class="card-text mb-0">Developed by <code>Microsoft</code>, the model is trained on 7Billion Parameters out performs llama and gemma, Mistral is a 7B parameter model, distributed with the Apache license.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        
         <div>
        <h5>LlAva</h5>
          <div class="card mb-0 border-0">
            <div class="row g-0 align-items-center">
              <div class="col-md-5">
                <img
                  src="https://llava-vl.github.io/llava-interactive/images/llava_interactive_logo.png"
                  class="img-fluid rounded-start" alt="Ai Img" style="max-height: 200px; object-fit: cover;">
              </div>
              <div class="col-md-7">
                <div class="card-body p-2">
                  <a href="https://ollama.com/library/llava" target="_blank"><h5 class="card-title"> LlAva:7b</h5></a>
                  <p class="card-text mb-0"><code>Large Language And Vision Assistance </code>Open Source model which is fine tuned on 7Billion Parameters Mainly used for Mutli-Media summarization.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        
         <div>
        <h5>LlAva-Llama3</h5>
          <div class="card mb-0 border-0">
            <div class="row g-0 align-items-center">
              <div class="col-md-5">
                <img
                  src="https://ollama.com/assets/library/llava-llama3/dc3b65cd-62de-45cd-93f9-5c6da62214fa"
                  class="img-fluid rounded-start" alt="Ai Img" style="max-height: 200px; object-fit: cover;">
              </div>
              <div class="col-md-7">
                <div class="card-body p-2">
                  <a href="https://ollama.com/library/llava-llama3" target="_blank"><h5 class="card-title">LlAva-Llama3:8b</h5></a>
                  <p class="card-text mb-0">Llava model integrated with Meta AI's Llama model which is fine tuned to produce high accurate response across Images, Videos, Audio,etc.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
